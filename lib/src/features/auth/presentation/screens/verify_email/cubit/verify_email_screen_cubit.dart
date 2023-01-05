import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'verify_email_screen_state.dart';

const int _duration = 59;
const _oneSec = Duration(seconds: 1);

class VerifyEmailScreenCubit extends Cubit<VerifyEmailScreenState> {
  StreamSubscription<int>? _timerSubscription;

  VerifyEmailScreenCubit() : super(const VerifyEmailScreenState());

  void startTimer() {
    cancelTimer();

    _timerSubscription = Stream.periodic(
      _oneSec,
      (x) => x,
    ).take(_duration).listen((_) => tick());
  }

  void tick() {
    emit(state.copyWith(timerCount: state.timerCount - 1));
  }

  void resetTimer() {
    cancelTimer();
    emit(state.copyWith(timerCount: 59));
    startTimer();
  }

  void cancelTimer() => _timerSubscription?.cancel();

  @override
  Future<void> close() {
    cancelTimer();
    return super.close();
  }
}
