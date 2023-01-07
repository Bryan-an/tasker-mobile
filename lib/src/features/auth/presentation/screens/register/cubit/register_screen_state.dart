// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_screen_cubit.dart';

class RegisterScreenState extends Equatable {
  final bool passwordVisible;
  final User user;

  const RegisterScreenState({
    this.passwordVisible = false,
    this.user = const User(),
  });

  @override
  List<Object> get props => [passwordVisible, user];

  RegisterScreenState copyWith({
    bool? passwordVisible,
    User? user,
  }) {
    return RegisterScreenState(
      passwordVisible: passwordVisible ?? this.passwordVisible,
      user: user ?? this.user,
    );
  }

  @override
  bool get stringify => true;
}
