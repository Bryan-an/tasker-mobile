part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.getSettings() = _GetSettings;

  const factory SettingsEvent.updateSettings({required Settings settings}) =
      _UpdateSettings;

  /// Drops the cached settings and theme, e.g. on log out, so the next
  /// account does not inherit them.
  const factory SettingsEvent.reset() = _Reset;
}
