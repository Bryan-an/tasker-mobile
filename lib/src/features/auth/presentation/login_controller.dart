import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LoginController {
  final emailInputController = TextEditingController();
  final passwordInputController = TextEditingController();

  Future removeSplashScreen() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () => FlutterNativeSplash.remove(),
    );
  }
}
