import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/routes/export.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Register Screen'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () => context.go(AppScreen.login.toPath),
            child: const Text('Back to login'),
          ),
        ),
      ),
    );
  }
}
