// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final Settings settings;
  final Status getSettingsStatus;
  final Status updateSettingsStatus;

  const SettingsState({
    this.settings = const Settings(),
    this.getSettingsStatus = Status.initial,
    this.updateSettingsStatus = Status.initial,
  });

  @override
  List<Object> get props => [settings, getSettingsStatus];

  SettingsState copyWith({
    Settings? settings,
    Status? getSettingsStatus,
    Status? updateSettingsStatus,
  }) {
    return SettingsState(
      settings: settings ?? this.settings,
      getSettingsStatus: getSettingsStatus ?? this.getSettingsStatus,
      updateSettingsStatus: updateSettingsStatus ?? this.updateSettingsStatus,
    );
  }

  @override
  bool get stringify => true;
}
