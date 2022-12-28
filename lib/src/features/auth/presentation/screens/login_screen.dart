import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tasker_mobile/src/features/auth/presentation/widgets/filled_button.dart';
import 'package:tasker_mobile/src/features/auth/presentation/widgets/header.dart';
import 'package:tasker_mobile/src/features/auth/presentation/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  final emailInputController = TextEditingController();
  final passwordInputController = TextEditingController();

  LoginScreen({super.key});

  Future removeSplashScreen() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () => FlutterNativeSplash.remove(),
    );
  }

  @override
  Widget build(BuildContext context) {
    removeSplashScreen();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(22),
                      child: HeaderWidget('Log In'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 10,
                      ),
                      child: TextFieldWidget(
                        controller: emailInputController,
                        label: 'Email',
                        hint: 'Enter your email',
                        suffixIcon: IconButton(
                          onPressed: () => emailInputController.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 10,
                      ),
                      child: TextFieldWidget(
                        controller: passwordInputController,
                        label: 'Password',
                        hint: 'Enter your password',
                        obscureText: true,
                        suffixIcon: IconButton(
                          onPressed: () => passwordInputController.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 32,
                        right: 32,
                        bottom: 10,
                        top: 32,
                      ),
                      child: FilledButtonWidget(
                        child: const Text('Log in'),
                        onPressed: () => print('Log in'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 10,
                      ),
                      child: FilledButtonWidget(
                        child: const Text('Sign up'),
                        onPressed: () => print('Sign up'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Text(
                        'Or continue with',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: IconButton(
                            icon: Image.asset(
                              'assets/img/logo_facebook.png',
                            ),
                            iconSize: 50,
                            onPressed: () => print('Facebook'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: IconButton(
                            icon: Image.asset(
                              'assets/img/logo_google.png',
                            ),
                            iconSize: 50,
                            onPressed: () => print('Google'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
