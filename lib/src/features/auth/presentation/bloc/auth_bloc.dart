import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tasker_mobile/src/config/export.dart';
import 'package:tasker_mobile/src/features/auth/data/auth_interface.dart';
import 'package:tasker_mobile/src/features/auth/data/user_interface.dart';
import 'package:tasker_mobile/src/features/auth/domain/user.dart';
import 'package:tasker_mobile/src/features/auth/domain/verification.dart';
import 'package:tasker_mobile/src/utils/export.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  final IUserRepository userRepository;

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
    on<LogoutUser>(_mapLogoutUserEventToState);
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
        authenticated: true,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: AuthStatus.error));
    } catch (error) {
      showGeneralError(error);
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
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: AuthStatus.error));
    } catch (error) {
      showGeneralError(error);
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
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: AuthStatus.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapRegisterUserEventToState(
      RegisterUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      await authRepository.register(event.user);
      emit(state.copyWith(status: AuthStatus.success));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: AuthStatus.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapResendVerificationCodeEventToState(
      ResendVerificationCode event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      await authRepository.resendVerificationCode(event.data);
      emit(state.copyWith(status: AuthStatus.success));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: AuthStatus.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapVerifyEmailEventToState(
      VerifyEmail event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      await authRepository.verifyEmail(event.data);
      emit(state.copyWith(status: AuthStatus.success));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: AuthStatus.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: AuthStatus.error));
    }
  }

  void _mapAppStartEventToState(AppStart event, Emitter<AuthState> emit) async {
    try {
      final prefs = await futurePrefs;
      String? accessToken = prefs.getString('accessToken');

      if (accessToken != null) {
        dio.options.headers['authorization'] = 'Bearer $accessToken';
        var user = await userRepository.getInfo();

        emit(state.copyWith(
          status: AuthStatus.success,
          user: user,
          authenticated: true,
          initialized: true,
        ));
      } else {
        emit(state.copyWith(
          status: AuthStatus.success,
          initialized: true,
        ));
      }

      print('accessToken: ' + (accessToken ?? 'null'));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: AuthStatus.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: AuthStatus.error));
    }

    FlutterNativeSplash.remove();
  }

  void _mapLogoutUserEventToState(
      LogoutUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      final prefs = await futurePrefs;
      await prefs.remove('accessToken');
      dio.options.headers.remove('authorization');

      emit(
        state.copyWith(
          user: null,
          authenticated: false,
          status: AuthStatus.success,
        ),
      );
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(status: AuthStatus.error));
    }
  }
}
