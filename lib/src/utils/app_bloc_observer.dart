import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  // @override
  // void onChange(BlocBase bloc, Change change) {
  //   if (kDebugMode) {
  //     print('--------------------------Bloc changed--------------------------');
  //     print('Bloc: $bloc\nChange: $change');
  //     print('----------------------------------------------------------------');
  //   }

  //   super.onChange(bloc, change);
  // }

  // @override
  // void onClose(BlocBase bloc) {
  //   if (kDebugMode) {
  //     print('--------------------------Bloc closed--------------------------');
  //     print('Bloc: $bloc');
  //     print('---------------------------------------------------------------');
  //   }

  //   super.onClose(bloc);
  // }

  // @override
  // void onCreate(BlocBase bloc) {
  //   if (kDebugMode) {
  //     print('--------------------------Bloc created--------------------------');
  //     print('Bloc: $bloc');
  //     print('----------------------------------------------------------------');
  //   }

  //   super.onCreate(bloc);
  // }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      print('--------------------------Bloc error--------------------------');
      print('Bloc: $bloc\nError: $error');
      print('--------------------------------------------------------------');
    }

    super.onError(bloc, error, stackTrace);
  }

  // @override
  // void onEvent(Bloc bloc, Object? event) {
  //   if (kDebugMode) {
  //     print('--------------------------Bloc event--------------------------');
  //     print('Bloc: $bloc\nEvent: $event');
  //     print('--------------------------------------------------------------');
  //   }

  //   super.onEvent(bloc, event);
  // }

  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   if (kDebugMode) {
  //     print('------------------------Bloc transition------------------------');
  //     print('Bloc: $bloc\nTransition: $transition');
  //     print('---------------------------------------------------------------');
  //   }

  //   super.onTransition(bloc, transition);
  // }
}
