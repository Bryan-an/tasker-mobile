part of 'register_screen_bloc.dart';

class RegisterScreenEvent extends Equatable {
  const RegisterScreenEvent();

  @override
  List<Object> get props => [];
}

class TogglePasswordVisibility extends RegisterScreenEvent {}

class Register extends RegisterScreenEvent {
  final User user;

  const Register(this.user);

  @override
  List<Object> get props => [user];
}
