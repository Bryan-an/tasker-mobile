// ignore_for_file: use_build_context_synchronously

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/routes/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

part 'register_screen_event.dart';
part 'register_screen_state.dart';

class RegisterScreenBloc
    extends Bloc<RegisterScreenEvent, RegisterScreenState> {
  final IAuthRepository authRepository;

  RegisterScreenBloc({
    required this.authRepository,
  }) : super(const RegisterScreenState()) {
    on<ShowPassword>(_mapShowPasswordEventToState);
    on<HidePassword>(_mapHidePasswordEventToState);
    on<Register>(_mapRegisterEventToState);
  }

  void _mapShowPasswordEventToState(
      ShowPassword event, Emitter<RegisterScreenState> emit) async {
    emit(state.copyWith(passwordVisible: true));
  }

  void _mapHidePasswordEventToState(
      HidePassword event, Emitter<RegisterScreenState> emit) async {
    emit(state.copyWith(passwordVisible: false));
  }

  void _mapRegisterEventToState(
      Register event, Emitter<RegisterScreenState> emit) async {
    emit(state.copyWith(status: Status.loading));

    try {
      await authRepository.register(event.user);
      emit(state.copyWith(status: Status.success));
      event.context.go(AppScreen.verifyEmail.toPath);
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: Status.error));
    }
  }
}
