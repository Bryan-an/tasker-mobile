part of 'login_screen_bloc.dart';

class LoginScreenEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class Login extends LoginScreenEvent {
  final User user;

  Login(this.user);

  @override
  List<Object> get props => [user];
}

class LoginWithFacebook extends LoginScreenEvent {}

class LoginWithGoogle extends LoginScreenEvent {}

class ShowPassword extends LoginScreenEvent {}

class HidePassword extends LoginScreenEvent {}
