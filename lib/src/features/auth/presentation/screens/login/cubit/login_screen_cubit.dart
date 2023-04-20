import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_screen_cubit.freezed.dart';
part 'login_screen_state.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  LoginScreenCubit() : super(const LoginScreenState());

  void togglePasswordVisibility() {
    emit(state.copyWith(passwordVisible: !state.passwordVisible));
  }
}
