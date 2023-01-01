part of 'verify_email_screen_bloc.dart';

class VerifyEmailScreenEvent extends Equatable {
  const VerifyEmailScreenEvent();

  @override
  List<Object> get props => [];
}

class VerifyEmail extends VerifyEmailScreenEvent {
  final Verification data;

  const VerifyEmail(this.data);

  @override
  List<Object> get props => [data];
}

class ResendCode extends VerifyEmailScreenEvent {
  final Verification data;

  const ResendCode(this.data);

  @override
  List<Object> get props => [data];
}
