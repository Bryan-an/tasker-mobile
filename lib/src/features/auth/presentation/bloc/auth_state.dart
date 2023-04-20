// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(User()) User user,
    @Default(false) bool initialized,
    @Default(Status.initial) Status loginStatus,
    @Default(Status.initial) Status loginFacebookStatus,
    @Default(Status.initial) Status loginGoogleStatus,
    @Default(Status.initial) Status logoutStatus,
    @Default(Status.initial) Status registerStatus,
    @Default(Status.initial) Status verifyEmailStatus,
    @Default(Status.initial) Status resendCodeStatus,
  }) = _AuthState;
}
