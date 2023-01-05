// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'verify_email_screen_cubit.dart';

class VerifyEmailScreenState extends Equatable {
  final int timerCount;

  const VerifyEmailScreenState({
    this.timerCount = _duration,
  });

  @override
  List<Object> get props => [timerCount];

  VerifyEmailScreenState copyWith({
    int? timerCount,
  }) {
    return VerifyEmailScreenState(
      timerCount: timerCount ?? this.timerCount,
    );
  }

  @override
  bool get stringify => true;
}
