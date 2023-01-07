// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final User user;
  final bool initialized;
  final Status loginStatus;
  final Status loginFacebookStatus;
  final Status loginGoogleStatus;
  final Status logoutStatus;
  final Status registerStatus;
  final Status verifyEmailStatus;
  final Status resendCodeStatus;

  const AuthState({
    this.user = const User(),
    this.initialized = false,
    this.loginStatus = Status.initial,
    this.loginFacebookStatus = Status.initial,
    this.loginGoogleStatus = Status.initial,
    this.logoutStatus = Status.initial,
    this.registerStatus = Status.initial,
    this.verifyEmailStatus = Status.initial,
    this.resendCodeStatus = Status.initial,
  });

  @override
  List<Object?> get props => [
        user,
        initialized,
        loginStatus,
        loginFacebookStatus,
        loginGoogleStatus,
        logoutStatus,
        registerStatus,
        verifyEmailStatus,
        resendCodeStatus,
      ];

  AuthState copyWith({
    User? user,
    bool? initialized,
    Status? loginStatus,
    Status? loginFacebookStatus,
    Status? loginGoogleStatus,
    Status? logoutStatus,
    Status? registerStatus,
    Status? verifyEmailStatus,
    Status? resendCodeStatus,
  }) =>
      AuthState(
        user: user ?? this.user,
        initialized: initialized ?? this.initialized,
        loginStatus: loginStatus ?? this.loginStatus,
        loginFacebookStatus: loginFacebookStatus ?? this.loginFacebookStatus,
        loginGoogleStatus: loginGoogleStatus ?? this.loginGoogleStatus,
        logoutStatus: logoutStatus ?? this.logoutStatus,
        registerStatus: registerStatus ?? this.registerStatus,
        verifyEmailStatus: verifyEmailStatus ?? this.verifyEmailStatus,
        resendCodeStatus: resendCodeStatus ?? this.resendCodeStatus,
      );

  @override
  bool get stringify => true;
}
