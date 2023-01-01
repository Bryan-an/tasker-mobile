part of 'register_screen_bloc.dart';

class RegisterScreenState extends Equatable {
  final Status status;
  final bool passwordVisible;
  final User user;

  const RegisterScreenState({
    this.status = Status.initial,
    this.passwordVisible = false,
    this.user = const User(),
  });

  @override
  List<Object> get props => [status, passwordVisible, user];

  RegisterScreenState copyWith({
    Status? status,
    bool? passwordVisible,
    User? user,
  }) =>
      RegisterScreenState(
        status: status ?? this.status,
        passwordVisible: passwordVisible ?? this.passwordVisible,
        user: user ?? this.user,
      );
}
