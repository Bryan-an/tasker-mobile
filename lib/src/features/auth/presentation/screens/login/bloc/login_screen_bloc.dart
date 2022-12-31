import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

part 'login_screen_event.dart';
part 'login_screen_state.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  final IAuthRepository authRepository;
  final IUserRepository userRepository;
  final AuthBloc authBloc;

  LoginScreenBloc({
    required this.authBloc,
    required this.authRepository,
    required this.userRepository,
  }) : super(const LoginScreenState()) {
    on<Login>(_mapLoginEventToState);
    on<LoginWithFacebook>(_mapLoginWithFacebookEventToState);
    on<LoginWithGoogle>(_mapLoginWithGoogleEventToState);
    on<ShowPassword>(_mapShowPasswordEventToState);
    on<HidePassword>(_mapHidePasswordEventToState);
  }

  void _mapLoginEventToState(
      Login event, Emitter<LoginScreenState> emit) async {
    emit(state.copyWith(status: Status.loading));

    try {
      await authRepository.login(event.user);
      var user = await userRepository.getInfo();
      authBloc.add(LoginUser(user: user));
      emit(state.copyWith(status: Status.success));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: Status.error));
    }
  }

  void _mapLoginWithFacebookEventToState(
      LoginWithFacebook event, Emitter<LoginScreenState> emit) async {
    emit(state.copyWith(status: Status.loading));

    try {
      await authRepository.loginWithFacebook();
      var user = await userRepository.getInfo();
      authBloc.add(LoginUser(user: user));
      emit(state.copyWith(status: Status.success));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: Status.error));
    }
  }

  void _mapLoginWithGoogleEventToState(
      LoginWithGoogle event, Emitter<LoginScreenState> emit) async {
    emit(state.copyWith(status: Status.loading));

    try {
      await authRepository.loginWithGoogle();
      var user = await userRepository.getInfo();
      authBloc.add(LoginUser(user: user));
      emit(state.copyWith(status: Status.success));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: Status.error));
    }
  }

  void _mapShowPasswordEventToState(
      ShowPassword event, Emitter<LoginScreenState> emit) async {
    emit(state.copyWith(passwordVisible: true));
  }

  void _mapHidePasswordEventToState(
      HidePassword event, Emitter<LoginScreenState> emit) async {
    emit(state.copyWith(passwordVisible: false));
  }
}
