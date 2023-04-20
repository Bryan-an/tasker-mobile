// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'verify_email_screen_cubit.dart';

@freezed
class VerifyEmailScreenState with _$VerifyEmailScreenState {
  const factory VerifyEmailScreenState({
    @Default(_duration) int timerCount,
  }) = _VerifyEmailScreenState;
}
