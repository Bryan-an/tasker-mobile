import 'package:tasker_mobile/src/features/settings/export.dart';

abstract class ISettingsRepository {
  Future<Settings> get();

  Future<void> create(Settings settings);

  Future<void> update(Settings settings);

  Future<void> replace(Settings settings);
}
