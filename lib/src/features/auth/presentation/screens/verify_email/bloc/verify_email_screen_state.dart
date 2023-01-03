// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'verify_email_screen_bloc.dart';

class VerifyEmailScreenState extends Equatable {
  final Status status;
  final int timerCount;

  const VerifyEmailScreenState({
    this.status = Status.initial,
    this.timerCount = 59,
  });

  @override
  List<Object> get props => [status, timerCount];

  VerifyEmailScreenState copyWith({
    Status? status,
    int? timerCount,
  }) =>
      VerifyEmailScreenState(
        status: status ?? this.status,
        timerCount: timerCount ?? this.timerCount,
      );

  @override
  bool get stringify => true;
}
