part of 'auth_bloc.dart';

class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginUser extends AuthEvent {
  final User user;

  LoginUser({
    required this.user,
  });

  @override
  List<Object?> get props => [user];
}

class LogoutUser extends AuthEvent {}

class ResendVerificationCode extends AuthEvent {
  final Verification data;

  ResendVerificationCode(this.data);

  @override
  List<Object?> get props => [data];
}

class VerifyEmail extends AuthEvent {
  final Verification data;

  VerifyEmail(this.data);

  @override
  List<Object?> get props => [data];
}

class AppStart extends AuthEvent {}
