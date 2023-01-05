import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  SessionCubit() : super(Unauthenticated());

  void logIn() => emit(Authenticated());

  void logOut() => emit(Unauthenticated());
}
