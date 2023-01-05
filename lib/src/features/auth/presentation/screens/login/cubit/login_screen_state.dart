// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_screen_cubit.dart';

class LoginScreenState extends Equatable {
  final bool passwordVisible;

  const LoginScreenState({
    this.passwordVisible = false,
  });

  @override
  List<Object> get props => [passwordVisible];

  @override
  bool get stringify => true;

  LoginScreenState copyWith({
    bool? passwordVisible,
  }) {
    return LoginScreenState(
      passwordVisible: passwordVisible ?? this.passwordVisible,
    );
  }
}
