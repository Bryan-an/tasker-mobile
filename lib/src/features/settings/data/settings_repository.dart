import 'package:tasker_mobile/src/features/settings/export.dart';

class SettingsRepository implements ISettingsRepository {
  final SettingsService _service;

  SettingsRepository({SettingsService? service})
      : _service = service ?? SettingsService();

  @override
  Future<Settings> get() async {
    final settings = await _service.get();
    return Settings.fromJson(settings);
  }

  @override
  Future<void> create(Settings settings) async {
    await _service.create(settings.toJson());
  }

  @override
  Future<void> replace(Settings settings) async {
    await _service.replace(settings.toJson());
  }

  @override
  Future<void> update(Settings settings) async {
    await _service.update(settings.toJson());
  }
}
