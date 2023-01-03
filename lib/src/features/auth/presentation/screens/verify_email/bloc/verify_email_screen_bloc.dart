import 'dart:async';

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
  StreamSubscription<int>? _timerSubscription;
  final int _duration = 59;
  final oneSec = const Duration(seconds: 1);

  VerifyEmailScreenBloc({
    required this.authRepository,
  }) : super(const VerifyEmailScreenState()) {
    on<VerifyEmail>(_mapVerifyEmailEventToState);
    on<ResendCode>(_mapResendCodeEventToState);
    on<StartTimer>(_mapStartTimerEventToState);
    on<Tick>(_mapTickEventToState);
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
    _timerSubscription?.cancel();

    try {
      await authRepository.resendVerificationCode(event.data);
      final snackBarState = scaffoldMessengerKey.currentState;

      snackBarState?.showSnackBar(
        const SnackBar(
          content: Text('Please check again your email'),
        ),
      );

      emit(state.copyWith(timerCount: 59));
      add(StartTimer());
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: Status.error));
    }
  }

  void _mapStartTimerEventToState(
      StartTimer event, Emitter<VerifyEmailScreenState> emit) async {
    _timerSubscription?.cancel();

    _timerSubscription = Stream.periodic(
      oneSec,
      (x) => x,
    ).take(_duration).listen((_) => add(Tick()));
  }

  void _mapTickEventToState(
      Tick event, Emitter<VerifyEmailScreenState> emit) async {
    emit(state.copyWith(timerCount: state.timerCount - 1));
  }

  @override
  Future<void> close() {
    print('here');
    _timerSubscription?.cancel();
    return super.close();
  }
}
