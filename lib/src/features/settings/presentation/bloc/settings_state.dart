// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(Settings()) Settings settings,
    @Default(Status.initial) Status getSettingsStatus,
    @Default(Status.initial) Status updateSettingsStatus,
  }) = _SettingsState;
}
