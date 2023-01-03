// ignore_for_file: public_member_api_docs, sort_constructors_first
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

  @override
  bool get stringify => true;
}
