import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:localstorage/localstorage.dart';
import 'package:tasker_mobile/src/features/auth/data/auth_interface.dart';
import 'package:tasker_mobile/src/features/auth/data/user_interface.dart';
import 'package:tasker_mobile/src/features/auth/domain/user.dart';
import 'package:tasker_mobile/src/features/auth/domain/verification.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  final IUserRepository userRepository;
  final LocalStorage storage = LocalStorage('tasker');

  AuthBloc({
    required this.authRepository,
    required this.userRepository,
  }) : super(const AuthState()) {
    on<LoginUser>(_mapLoginUserEventToState);
    on<LoginWithFacebook>(_mapLoginWithFacebookEventToState);
    on<LoginWithGoogle>(_mapLoginWithGoogleEventToState);
    on<RegisterUser>(_mapRegisterUserEventToState);
    on<ResendVerificationCode>(_mapResendVerificationCodeEventToState);
    on<VerifyEmail>(_mapVerifyEmailEventToState);
    on<AppStart>(_mapAppStartEventToState);
  }

  void _mapLoginUserEventToState(
      LoginUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      await authRepository.login(event.user);
      var user = await userRepository.getInfo();

      emit(state.copyWith(
        status: AuthStatus.success,
        user: user,
      ));
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
      }

      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapLoginWithFacebookEventToState(
      LoginWithFacebook event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      await authRepository.loginWithFacebook();
      var user = await userRepository.getInfo();

      emit(state.copyWith(
        status: AuthStatus.success,
        user: user,
      ));
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
      }

      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapLoginWithGoogleEventToState(
      LoginWithGoogle event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      await authRepository.loginWithGoogle();
      var user = await userRepository.getInfo();

      emit(state.copyWith(
        status: AuthStatus.success,
        user: user,
      ));
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
      }

      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapRegisterUserEventToState(
      RegisterUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      await authRepository.register(event.user);
      emit(state.copyWith(status: AuthStatus.success));
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
      }

      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapResendVerificationCodeEventToState(
      ResendVerificationCode event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      await authRepository.resendVerificationCode(event.data);
      emit(state.copyWith(status: AuthStatus.success));
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
      }

      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapVerifyEmailEventToState(
      VerifyEmail event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      await authRepository.verifyEmail(event.data);
      emit(state.copyWith(status: AuthStatus.success));
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
      }

      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapAppStartEventToState(AppStart event, Emitter<AuthState> emit) async {
    String? accessToken = storage.getItem('accessToken');

    if (accessToken != null) {
      try {
        var user = await userRepository.getInfo();

        emit(state.copyWith(
          status: AuthStatus.success,
          user: user,
          authenticated: true,
          initialized: true,
        ));
      } catch (error, stacktrace) {
        if (kDebugMode) {
          print(stacktrace);
        }

        emit(state.copyWith(status: AuthStatus.error));
      }
    } else {
      emit(state.copyWith(
        status: AuthStatus.success,
        initialized: true,
      ));
    }
  }
}
