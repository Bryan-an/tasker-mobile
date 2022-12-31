part of 'login_screen_bloc.dart';

class LoginScreenState extends Equatable {
  final Status status;
  final bool passwordVisible;

  const LoginScreenState({
    this.status = Status.initial,
    this.passwordVisible = false,
  });

  @override
  List<Object> get props => [status, passwordVisible];

  LoginScreenState copyWith({Status? status, bool? passwordVisible}) =>
      LoginScreenState(
        status: status ?? this.status,
        passwordVisible: passwordVisible ?? this.passwordVisible,
      );
}
