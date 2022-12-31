part of 'register_screen_bloc.dart';

class RegisterScreenEvent extends Equatable {
  const RegisterScreenEvent();

  @override
  List<Object> get props => [];
}

class ShowPassword extends RegisterScreenEvent {}

class HidePassword extends RegisterScreenEvent {}

class Register extends RegisterScreenEvent {
  final User user;
  final BuildContext context;

  const Register({
    required this.user,
    required this.context,
  });

  @override
  List<Object> get props => [user];
}
