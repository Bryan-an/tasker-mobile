import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/settings/export.dart';

class _MemoryStorage implements Storage {
  final Map<String, dynamic> _store = <String, dynamic>{};

  @override
  dynamic read(String key) => _store[key];

  @override
  Future<void> write(String key, dynamic value) async {
    _store[key] = value;
  }

  @override
  Future<void> delete(String key) async {
    _store.remove(key);
  }

  @override
  Future<void> clear() async {
    _store.clear();
  }

  @override
  Future<void> close() async {}
}

class _FakeSettingsRepository extends SettingsRepository {
  Settings remote = const Settings();
  Object? error;
  Settings? lastUpdate;

  @override
  Future<Settings> get() async {
    if (error != null) {
      throw error!;
    }

    return remote;
  }

  @override
  Future<void> update(Settings settings) async {
    lastUpdate = settings;

    if (error != null) {
      throw error!;
    }
  }
}

void main() {
  // The error helpers look up the global ScaffoldMessenger key, which
  // requires a widget binding even when no messenger is mounted.
  TestWidgetsFlutterBinding.ensureInitialized();

  late _MemoryStorage storage;
  late _FakeSettingsRepository repository;

  SettingsBloc buildBloc() => SettingsBloc(settingsRepository: repository);

  setUp(() {
    storage = _MemoryStorage();
    HydratedBloc.storage = storage;
    repository = _FakeSettingsRepository();
  });

  group('hydration', () {
    test('persists only the theme mode', () {
      final bloc = buildBloc();

      final json = bloc.toJson(
        const SettingsState(
          themeMode: ThemeMode.dark,
          settings: Settings(id: 'abc'),
          getSettingsStatus: Status.success,
        ),
      );

      expect(json, {'themeMode': 'dark'});
      expect(
          bloc.fromJson(json!), const SettingsState(themeMode: ThemeMode.dark));
      expect(bloc.fromJson({'themeMode': 'purple'}), isNull);
      expect(bloc.fromJson({'themeMode': 42}), isNull);
      expect(bloc.fromJson({}), isNull);
    });

    test('a new bloc boots with the last chosen theme', () async {
      final first = buildBloc();
      first.add(const SettingsEvent.updateSettings(
        settings: Settings(theme: ThemeMode.dark),
      ));
      await first.stream
          .firstWhere((state) => state.updateSettingsStatus.isSuccess);
      await first.close();

      final second = buildBloc();

      expect(second.state.themeMode, ThemeMode.dark);
      expect(second.state.settings, const Settings());
      expect(second.state.getSettingsStatus, Status.initial);
      await second.close();
    });
  });

  group('getSettings', () {
    test('applies the theme returned by the server', () async {
      repository.remote = const Settings(theme: ThemeMode.dark);
      final bloc = buildBloc();

      bloc.add(const SettingsEvent.getSettings());
      final state = await bloc.stream
          .firstWhere((state) => state.getSettingsStatus.isSuccess);

      expect(state.themeMode, ThemeMode.dark);
      expect(state.settings, repository.remote);
      await bloc.close();
    });

    test('keeps the current theme when the server has none', () async {
      await storage.write('SettingsBloc', {'themeMode': 'dark'});
      repository.remote = const Settings(id: 'abc');
      final bloc = buildBloc();
      expect(bloc.state.themeMode, ThemeMode.dark);

      bloc.add(const SettingsEvent.getSettings());
      final state = await bloc.stream
          .firstWhere((state) => state.getSettingsStatus.isSuccess);

      expect(state.themeMode, ThemeMode.dark);
      expect(state.settings.id, 'abc');
      await bloc.close();
    });
  });

  group('updateSettings', () {
    test('switches the theme immediately and sends only the change', () async {
      final bloc = buildBloc();

      bloc.add(const SettingsEvent.updateSettings(
        settings: Settings(theme: ThemeMode.dark),
      ));
      final loading = await bloc.stream
          .firstWhere((state) => state.updateSettingsStatus.isLoading);
      expect(loading.themeMode, ThemeMode.dark);

      final done = await bloc.stream
          .firstWhere((state) => state.updateSettingsStatus.isSuccess);
      expect(done.themeMode, ThemeMode.dark);
      expect(done.settings.theme, ThemeMode.dark);
      expect(repository.lastUpdate, const Settings(theme: ThemeMode.dark));
      await bloc.close();
    });

    test('keeps notification settings when only the theme changes', () async {
      const notifications = Notifications(mobile: true, email: false);
      repository.remote = const Settings(notifications: notifications);
      final bloc = buildBloc();
      bloc.add(const SettingsEvent.getSettings());
      await bloc.stream
          .firstWhere((state) => state.getSettingsStatus.isSuccess);

      bloc.add(const SettingsEvent.updateSettings(
        settings: Settings(theme: ThemeMode.dark),
      ));
      final state = await bloc.stream
          .firstWhere((state) => state.updateSettingsStatus.isSuccess);

      expect(state.settings.notifications, notifications);
      expect(state.settings.theme, ThemeMode.dark);
      await bloc.close();
    });

    test('rolls back when the server rejects the change', () async {
      repository.error = Exception('offline');
      final bloc = buildBloc();

      bloc.add(const SettingsEvent.updateSettings(
        settings: Settings(theme: ThemeMode.dark),
      ));
      final state = await bloc.stream
          .firstWhere((state) => state.updateSettingsStatus.isError);

      expect(state.themeMode, ThemeMode.light);
      expect(state.settings.theme, isNull);
      expect(storage.read('SettingsBloc'), {'themeMode': 'light'});
      await bloc.close();
    });
  });

  test('reset drops the cached settings and theme', () async {
    await storage.write('SettingsBloc', {'themeMode': 'dark'});
    final bloc = buildBloc();
    expect(bloc.state.themeMode, ThemeMode.dark);

    bloc.add(const SettingsEvent.reset());
    final state =
        await bloc.stream.firstWhere((state) => state == const SettingsState());

    expect(state.themeMode, ThemeMode.light);
    expect(storage.read('SettingsBloc'), {'themeMode': 'light'});
    await bloc.close();
  });
}
