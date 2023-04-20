import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'register_screen_cubit.freezed.dart';
part 'register_screen_state.dart';

class RegisterScreenCubit extends Cubit<RegisterScreenState> {
  RegisterScreenCubit() : super(const RegisterScreenState());

  void togglePasswordVisibility() {
    emit(state.copyWith(passwordVisible: !state.passwordVisible));
  }

  void setUser(User user) {
    emit(state.copyWith(user: user));
  }
}
