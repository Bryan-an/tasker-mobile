import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/settings/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

/// Owns the user's settings, including the active [ThemeMode].
///
/// The theme mode is the single source of truth for `MaterialApp.themeMode`.
/// It is persisted locally through [HydratedBloc], so the app boots with the
/// last chosen theme before the server settings arrive, and is then
/// reconciled with whatever the server returns.
class SettingsBloc extends HydratedBloc<SettingsEvent, SettingsState> {
  final SettingsRepository settingsRepository;

  SettingsBloc({required this.settingsRepository})
      : super(const SettingsState()) {
    on<SettingsEvent>((events, emit) async {
      await events.map(
        getSettings: (event) async => await _getSettings(event, emit),
        updateSettings: (event) async => await _updateSettings(event, emit),
        reset: (event) async => _reset(event, emit),
      );
    });
  }

  static const _themeModeKey = 'themeMode';

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    final name = json[_themeModeKey];

    if (name is! String) {
      return null;
    }

    final themeMode = ThemeMode.values.asNameMap()[name];

    if (themeMode == null) {
      return null;
    }

    return SettingsState(themeMode: themeMode);
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) {
    return <String, dynamic>{_themeModeKey: state.themeMode.name};
  }

  _getSettings(_GetSettings event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(getSettingsStatus: Status.loading));

    try {
      final settings = await settingsRepository.get();

      emit(state.copyWith(
        settings: settings,
        themeMode: settings.theme ?? state.themeMode,
        getSettingsStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(getSettingsStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(getSettingsStatus: Status.error));
    }
  }

  _updateSettings(_UpdateSettings event, Emitter<SettingsState> emit) async {
    final previousState = state;
    final updatedSettings = event.settings;
    final currentSettings = state.settings;

    // Apply optimistically so the UI (and the theme) reacts immediately,
    // then roll back if the server rejects the change.
    emit(
      state.copyWith(
        settings: currentSettings.copyWith(
          notifications:
              updatedSettings.notifications ?? currentSettings.notifications,
          theme: updatedSettings.theme ?? currentSettings.theme,
        ),
        themeMode: updatedSettings.theme ?? state.themeMode,
        updateSettingsStatus: Status.loading,
      ),
    );

    try {
      await settingsRepository.update(updatedSettings);

      emit(state.copyWith(
        updateSettingsStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(previousState.copyWith(updateSettingsStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(previousState.copyWith(updateSettingsStatus: Status.error));
    }
  }

  void _reset(_Reset event, Emitter<SettingsState> emit) {
    emit(const SettingsState());
  }
}
