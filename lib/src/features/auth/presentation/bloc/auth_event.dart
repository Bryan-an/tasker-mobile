part of 'auth_bloc.dart';

class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class Login extends AuthEvent {
  final User user;

  Login(this.user);

  @override
  List<Object> get props => [user];
}

class LoginWithFacebook extends AuthEvent {}

class LoginWithGoogle extends AuthEvent {}

class Register extends AuthEvent {
  final User user;

  Register(this.user);

  @override
  List<Object> get props => [user];
}

class Logout extends AuthEvent {}

class AppStart extends AuthEvent {}

class VerifyEmail extends AuthEvent {
  final Verification data;

  VerifyEmail(this.data);

  @override
  List<Object> get props => [data];
}

class ResendCode extends AuthEvent {
  final Verification data;

  ResendCode(this.data);

  @override
  List<Object> get props => [data];
}
