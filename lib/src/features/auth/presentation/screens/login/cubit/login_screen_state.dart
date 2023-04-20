// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_screen_cubit.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState({
    @Default(false) bool passwordVisible,
  }) = _LoginScreenState;
}
