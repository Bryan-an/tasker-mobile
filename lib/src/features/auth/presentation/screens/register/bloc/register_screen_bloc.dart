import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

part 'register_screen_event.dart';
part 'register_screen_state.dart';

class RegisterScreenBloc
    extends Bloc<RegisterScreenEvent, RegisterScreenState> {
  final IAuthRepository authRepository;

  RegisterScreenBloc({
    required this.authRepository,
  }) : super(const RegisterScreenState()) {
    on<TogglePasswordVisibility>(_mapTogglePasswordVisibilityEventToState);
    on<Register>(_mapRegisterEventToState);
  }

  void _mapTogglePasswordVisibilityEventToState(
      TogglePasswordVisibility event, Emitter<RegisterScreenState> emit) async {
    emit(state.copyWith(passwordVisible: !state.passwordVisible));
  }

  void _mapRegisterEventToState(
      Register event, Emitter<RegisterScreenState> emit) async {
    emit(state.copyWith(status: Status.loading));

    try {
      await authRepository.register(event.user);
      emit(state.copyWith(status: Status.success, user: event.user));
      emit(state.copyWith(status: Status.initial));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(status: Status.error));
    } catch (error) {
      showGeneralError(error);
      emit(state.copyWith(status: Status.error));
    }
  }
}
