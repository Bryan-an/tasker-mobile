part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required User user}) = _Login;

  const factory AuthEvent.loginWithFacebook() = _LoginWithFacebook;

  const factory AuthEvent.loginWithGoogle() = _LoginWithGoogle;

  const factory AuthEvent.register({required User user}) = _Register;

  const factory AuthEvent.logout() = _Logout;

  const factory AuthEvent.startApp() = _StartApp;

  const factory AuthEvent.verifyEmail({required Verification data}) =
      _VerifyEmail;

  const factory AuthEvent.resendCode({required Verification data}) =
      _ResendCode;
}
