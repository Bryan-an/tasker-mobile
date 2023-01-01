part of 'verify_email_screen_bloc.dart';

class VerifyEmailScreenState extends Equatable {
  final Status status;

  const VerifyEmailScreenState({
    this.status = Status.initial,
  });

  @override
  List<Object> get props => [status];

  VerifyEmailScreenState copyWith({
    Status? status,
  }) =>
      VerifyEmailScreenState(
        status: status ?? this.status,
      );
}
