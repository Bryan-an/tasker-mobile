import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_screen_state.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  LoginScreenCubit() : super(LoginScreenState());
}
