import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/settings/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository settingsRepository;

  SettingsBloc({required this.settingsRepository})
      : super(const SettingsState()) {
    on<GetSettings>(_mapGetSettingsEventToState);
    on<UpdateSettings>(_mapUpdateSettingsEventToState);
  }

  void _mapGetSettingsEventToState(
      GetSettings event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(getSettingsStatus: Status.loading));

    try {
      final settings = await settingsRepository.get();

      emit(state.copyWith(
        settings: settings,
        getSettingsStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(getSettingsStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(getSettingsStatus: Status.error));
    }

    emit(state.copyWith(getSettingsStatus: Status.initial));
  }

  void _mapUpdateSettingsEventToState(
      UpdateSettings event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(updateSettingsStatus: Status.loading));

    final updatedSettings = event.settings;
    final currentSettings = state.settings;

    try {
      emit(
        state.copyWith(
          settings: currentSettings.copyWith(
            notifications: updatedSettings.notifications,
            theme: updatedSettings.theme,
          ),
        ),
      );

      await settingsRepository.update(updatedSettings);

      emit(state.copyWith(
        updateSettingsStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(updateSettingsStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(updateSettingsStatus: Status.error));
    }

    emit(state.copyWith(updateSettingsStatus: Status.initial));
  }
}
