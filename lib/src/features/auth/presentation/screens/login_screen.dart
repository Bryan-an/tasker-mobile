import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/constants/colors.dart';
import 'package:tasker_mobile/src/features/auth/domain/user.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/features/auth/presentation/widgets/filled_button.dart';
import 'package:tasker_mobile/src/features/auth/presentation/widgets/header.dart';
import 'package:tasker_mobile/src/features/auth/presentation/widgets/text_field.dart';
import 'package:tasker_mobile/src/routes/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with InputValidationMixin {
  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
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
              Form(
                key: _formGlobalKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 10,
                            ),
                            child: TextFieldWidget(
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailInputController,
                              label: 'Email',
                              hint: 'Enter your email',
                              suffixIcon: IconButton(
                                onPressed: () => _emailInputController.clear(),
                                icon: const Icon(Icons.clear),
                              ),
                              validator: (email) {
                                if (email == null || email.isEmpty) {
                                  return 'Email required';
                                } else {
                                  if (isEmailValid(email)) {
                                    return null;
                                  } else {
                                    return 'Invalid email';
                                  }
                                }
                              },
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
                              keyboardType: TextInputType.visiblePassword,
                              controller: _passwordInputController,
                              label: 'Password',
                              hint: 'Enter your password',
                              obscureText: !_passwordVisible,
                              suffixIcon: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () => setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    }),
                                    icon: Icon(_passwordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                  ),
                                  IconButton(
                                    highlightColor: secondaryColor,
                                    onPressed: () =>
                                        _passwordInputController.clear(),
                                    icon: const Icon(Icons.clear),
                                  ),
                                ],
                              ),
                              validator: (password) {
                                if (password == null || password.isEmpty) {
                                  return 'Password required';
                                } else {
                                  return null;
                                }
                              },
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
                            child: BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                return FilledButtonWidget(
                                  onPressed: (state.status ==
                                          AuthStatus.loading)
                                      ? null
                                      : () {
                                          if (_formGlobalKey.currentState!
                                              .validate()) {
                                            final String email =
                                                _emailInputController.text;
                                            final String password =
                                                _passwordInputController.text;
                                            final user = User(
                                                email: email,
                                                password: password);

                                            context
                                                .read<AuthBloc>()
                                                .add(LoginUser(user));
                                          }
                                        },
                                  child: (state.status == AuthStatus.loading)
                                      ? const SizedBox(
                                          height: 25,
                                          width: 25,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    whiteColor),
                                          ),
                                        )
                                      : const Text('Log in'),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
                        onPressed: () => context.go(AppScreen.register.toPath),
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
                            onPressed: () => context
                                .read<AuthBloc>()
                                .add(LoginWithFacebook()),
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
