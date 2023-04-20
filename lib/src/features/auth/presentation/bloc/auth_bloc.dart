import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasker_mobile/src/config/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unnecessary_import
import 'package:flutter/foundation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  final IUserRepository userRepository;
  final SessionCubit sessionCubit;

  AuthBloc({
    required this.authRepository,
    required this.userRepository,
    required this.sessionCubit,
  }) : super(const AuthState()) {
    on<AuthEvent>((events, emit) async {
      await events.map(
        login: (event) async => await _login(event, emit),
        loginWithFacebook: (event) async =>
            await _loginWithFacebook(event, emit),
        loginWithGoogle: (event) async => await _loginWithGoogle(event, emit),
        logout: (event) async => await _logout(event, emit),
        register: (event) async => await _register(event, emit),
        resendCode: (event) async => await _resendCode(event, emit),
        startApp: (event) async => await _startApp(event, emit),
        verifyEmail: (event) async => await _verifyEmail(event, emit),
      );
    });
  }

  _login(_Login event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginStatus: Status.loading));

    try {
      await authRepository.login(event.user);
      var user = await userRepository.getInfo();

      emit(state.copyWith(
        user: user,
        loginStatus: Status.success,
      ));

      sessionCubit.logIn();
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(loginStatus: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(loginStatus: Status.error));
    }
  }

  _loginWithFacebook(_LoginWithFacebook event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginFacebookStatus: Status.loading));

    try {
      await authRepository.loginWithFacebook();
      var user = await userRepository.getInfo();

      emit(state.copyWith(
        user: user,
        loginFacebookStatus: Status.success,
      ));

      sessionCubit.logIn();
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(loginFacebookStatus: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(loginFacebookStatus: Status.error));
    }
  }

  _loginWithGoogle(_LoginWithGoogle event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginGoogleStatus: Status.loading));

    try {
      await authRepository.loginWithGoogle();
      var user = await userRepository.getInfo();

      emit(state.copyWith(
        user: user,
        loginGoogleStatus: Status.success,
      ));

      sessionCubit.logIn();
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(loginGoogleStatus: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(loginGoogleStatus: Status.error));
    }
  }

  _register(_Register event, Emitter<AuthState> emit) async {
    emit(state.copyWith(registerStatus: Status.loading));

    try {
      await authRepository.register(event.user);
      emit(state.copyWith(registerStatus: Status.success));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(registerStatus: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(registerStatus: Status.error));
    }
  }

  _startApp(_StartApp event, Emitter<AuthState> emit) async {
    dio.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) {
        if (e.response?.statusCode == 401) {
          sessionCubit.logOut();
        }

        return handler.next(e);
      },
    ));

    try {
      final prefs = await SharedPreferences.getInstance();
      String? accessToken = prefs.getString('accessToken');

      if (accessToken != null) {
        dio.options.headers['authorization'] = 'Bearer $accessToken';
        var user = await userRepository.getInfo();

        emit(state.copyWith(
          user: user,
        ));

        sessionCubit.logIn();
      }
    } on DioError catch (e) {
      showDioErrors(e);
    } catch (error) {
      showGeneralError(error);
    }

    emit(state.copyWith(
      initialized: true,
    ));

    FlutterNativeSplash.remove();
  }

  _logout(_Logout event, Emitter<AuthState> emit) async {
    emit(state.copyWith(logoutStatus: Status.loading));

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('accessToken');
      dio.options.headers.remove('authorization');

      emit(
        state.copyWith(
          logoutStatus: Status.success,
        ),
      );

      sessionCubit.logOut();
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(logoutStatus: Status.error));
    }
  }

  _verifyEmail(_VerifyEmail event, Emitter<AuthState> emit) async {
    emit(state.copyWith(verifyEmailStatus: Status.loading));

    try {
      await authRepository.verifyEmail(event.data);
      emit(state.copyWith(verifyEmailStatus: Status.success));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(verifyEmailStatus: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(verifyEmailStatus: Status.error));
    }
  }

  _resendCode(_ResendCode event, Emitter<AuthState> emit) async {
    emit(state.copyWith(resendCodeStatus: Status.loading));

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
      emit(state.copyWith(resendCodeStatus: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(resendCodeStatus: Status.error));
    }
  }
}
