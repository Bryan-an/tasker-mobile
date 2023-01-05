part of 'session_cubit.dart';

abstract class SessionState extends Equatable {
  const SessionState();

  @override
  List<Object> get props => [];
}

class Authenticated extends SessionState {}

class Unauthenticated extends SessionState {}
