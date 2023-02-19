part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

class GetSettings extends SettingsEvent {
  const GetSettings();

  @override
  List<Object> get props => [];
}

class UpdateSettings extends SettingsEvent {
  final Settings settings;

  const UpdateSettings(this.settings);

  @override
  List<Object> get props => [settings];
}
