import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Future removeSplashScreen() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () => FlutterNativeSplash.remove(),
    );
  }

  @override
  Widget build(BuildContext context) {
    removeSplashScreen();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: const Center(
        child: Text('Login Screen Body'),
      ),
    );
  }
}
