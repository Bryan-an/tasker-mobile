import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tasker_mobile/src/config/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
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
    on<AppStart>(_mapAppStartEventToState);
    on<LogoutUser>(_mapLogoutUserEventToState);
  }

  void _mapLoginUserEventToState(
      LoginUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      user: event.user,
      authenticated: true,
    ));
  }

  void _mapAppStartEventToState(AppStart event, Emitter<AuthState> emit) async {
    try {
      final prefs = await futurePrefs;
      String? accessToken = prefs.getString('accessToken');

      if (accessToken != null) {
        dio.options.headers['authorization'] = 'Bearer $accessToken';
        var user = await userRepository.getInfo();

        emit(state.copyWith(
          user: user,
          authenticated: true,
          initialized: true,
        ));
      } else {
        emit(state.copyWith(
          initialized: true,
        ));
      }
    } on DioError catch (e) {
      showDioErrors(e);
    } catch (error) {
      showGeneralError(error);
    }

    FlutterNativeSplash.remove();
  }

  void _mapLogoutUserEventToState(
      LogoutUser event, Emitter<AuthState> emit) async {
    try {
      final prefs = await futurePrefs;
      await prefs.remove('accessToken');
      dio.options.headers.remove('authorization');

      emit(
        state.copyWith(
          user: null,
          authenticated: false,
        ),
      );
    } catch (e) {
      showGeneralError(e);
    }
  }
}
