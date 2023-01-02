import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

part 'verify_email_screen_event.dart';
part 'verify_email_screen_state.dart';

class VerifyEmailScreenBloc
    extends Bloc<VerifyEmailScreenEvent, VerifyEmailScreenState> {
  final IAuthRepository authRepository;

  VerifyEmailScreenBloc({
    required this.authRepository,
  }) : super(const VerifyEmailScreenState()) {
    on<VerifyEmail>(_mapVerifyEmailEventToState);
    on<ResendCode>(_mapResendCodeEventToState);
    on<Tik>(_mapTikEventToState);
    on<RestartTimer>(_mapRestartTimerEventToState);
  }

  void _mapVerifyEmailEventToState(
      VerifyEmail event, Emitter<VerifyEmailScreenState> emit) async {
    emit(state.copyWith(status: Status.loading));

    try {
      await authRepository.verifyEmail(event.data);
      emit(state.copyWith(status: Status.success));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: Status.error));
    }
  }

  void _mapResendCodeEventToState(
      ResendCode event, Emitter<VerifyEmailScreenState> emit) async {
    try {
      await authRepository.resendVerificationCode(event.data);
      final snackBarState = scaffoldMessengerKey.currentState;

      snackBarState?.showSnackBar(
        const SnackBar(
          content: Text('Please check again your email'),
        ),
      );
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: Status.error));
    }
  }

  void _mapTikEventToState(
      Tik event, Emitter<VerifyEmailScreenState> emit) async {
    emit(state.copyWith(timerCount: state.timerCount - 1));
  }

  void _mapRestartTimerEventToState(
      RestartTimer event, Emitter<VerifyEmailScreenState> emit) async {
    emit(state.copyWith(timerCount: 59));
  }
}
