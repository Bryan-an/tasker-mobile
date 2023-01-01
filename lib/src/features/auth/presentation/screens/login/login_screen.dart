import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/features/auth/presentation/screens/login/bloc/login_screen_bloc.dart';
import 'package:tasker_mobile/src/routes/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginScreenBloc(
        authBloc: context.read<AuthBloc>(),
        authRepository: context.read<AuthRepository>(),
        userRepository: context.read<UserRepository>(),
      ),
      child: _LoginScreen(),
    );
  }
}

class _LoginScreen extends StatelessWidget with InputValidationMixin {
  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();

  _LoginScreen();

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
                            child:
                                BlocBuilder<LoginScreenBloc, LoginScreenState>(
                              builder: (context, state) {
                                return TextFieldWidget(
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: _passwordInputController,
                                  label: 'Password',
                                  hint: 'Enter your password',
                                  obscureText: !state.passwordVisible,
                                  suffixIcon: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () => context
                                            .read<LoginScreenBloc>()
                                            .add(TogglePasswordVisibility()),
                                        icon: Icon(state.passwordVisible
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
                                );
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
                            child:
                                BlocBuilder<LoginScreenBloc, LoginScreenState>(
                              builder: (context, state) {
                                return FilledButtonWidget(
                                  onPressed: (state.status == Status.loading)
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
                                                .read<LoginScreenBloc>()
                                                .add(Login(user));
                                          }
                                        },
                                  child: (state.status == Status.loading)
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
                        onPressed: () =>
                            context.push(AppScreen.register.toPath),
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
                                .read<LoginScreenBloc>()
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
                            onPressed: () => context
                                .read<LoginScreenBloc>()
                                .add(LoginWithGoogle()),
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
