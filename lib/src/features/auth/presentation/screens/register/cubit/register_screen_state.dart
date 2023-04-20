// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_screen_cubit.dart';

@freezed
class RegisterScreenState with _$RegisterScreenState {
  const factory RegisterScreenState({
    @Default(false) bool passwordVisible,
    @Default(User()) User user,
  }) = _RegisterScreenState;
}
