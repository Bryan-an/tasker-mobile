import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_screen_state.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  LoginScreenCubit() : super(const LoginScreenState());

  void togglePasswordVisibility() {
    emit(state.copyWith(passwordVisible: !state.passwordVisible));
  }
}
