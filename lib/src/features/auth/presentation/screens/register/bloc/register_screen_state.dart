part of 'register_screen_bloc.dart';

class RegisterScreenState extends Equatable {
  final Status status;
  final bool passwordVisible;

  const RegisterScreenState({
    this.status = Status.initial,
    this.passwordVisible = false,
  });

  @override
  List<Object> get props => [status];

  RegisterScreenState copyWith({
    Status? status,
    bool? passwordVisible,
  }) =>
      RegisterScreenState(
        status: status ?? this.status,
        passwordVisible: passwordVisible ?? this.passwordVisible,
      );
}
