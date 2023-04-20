import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/router/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

import 'cubit/login_screen_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with InputValidationMixin {
  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailInputController.dispose();
    _passwordInputController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email required';
    } else {
      if (isEmailValid(email)) {
        return null;
      } else {
        return 'Invalid email';
      }
    }
  }

  String? _validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password required';
    } else {
      return null;
    }
  }

  void _clearEmailInput() {
    _emailInputController.clear();
  }

  void _clearPasswordInput() {
    _passwordInputController.clear();
  }

  VoidCallback _togglePasswordVisibility(BuildContext context) {
    return () {
      context.read<LoginScreenCubit>().togglePasswordVisibility();
    };
  }

  VoidCallback _login(BuildContext context) {
    return () {
      if (_formGlobalKey.currentState!.validate()) {
        final String email = _emailInputController.text;
        final String password = _passwordInputController.text;
        final user = User(email: email, password: password);

        context.read<AuthBloc>().add(AuthEvent.login(user: user));
      }
    };
  }

  VoidCallback _goToRegister(BuildContext context) {
    return () {
      context.push(AppScreen.register.toPath);
    };
  }

  VoidCallback _loginWithFacebook(BuildContext context) {
    return () {
      context.read<AuthBloc>().add(const AuthEvent.loginWithFacebook());
    };
  }

  VoidCallback _loginWithGoogle(BuildContext context) {
    return () {
      context.read<AuthBloc>().add(const AuthEvent.loginWithGoogle());
    };
  }

  bool _isLoading(AuthState state) {
    return (state.loginStatus.isLoading ||
        state.loginFacebookStatus.isLoading ||
        state.loginGoogleStatus.isLoading);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginScreenCubit(),
      child: Builder(
        builder: (context) {
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
                                      onPressed: _clearEmailInput,
                                      icon: const Icon(Icons.clear),
                                    ),
                                    validator: _validateEmail,
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
                                  child: BlocSelector<LoginScreenCubit,
                                      LoginScreenState, bool>(
                                    selector: (state) => state.passwordVisible,
                                    builder: (context, state) {
                                      return TextFieldWidget(
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        controller: _passwordInputController,
                                        label: 'Password',
                                        hint: 'Enter your password',
                                        obscureText: !state,
                                        suffixIcon: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            IconButton(
                                              onPressed:
                                                  _togglePasswordVisibility(
                                                      context),
                                              icon: Icon(state
                                                  ? Icons.visibility
                                                  : Icons.visibility_off),
                                            ),
                                            IconButton(
                                              highlightColor: secondaryColor,
                                              onPressed: _clearPasswordInput,
                                              icon: const Icon(Icons.clear),
                                            ),
                                          ],
                                        ),
                                        validator: _validatePassword,
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
                                  child: BlocBuilder<AuthBloc, AuthState>(
                                    builder: (context, state) {
                                      return FilledButtonWidget(
                                        onPressed: _isLoading(state)
                                            ? null
                                            : _login(context),
                                        child: _isLoading(state)
                                            ? const SizedBox(
                                                height: 25,
                                                width: 25,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(whiteColor),
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
                              onPressed: _goToRegister(context),
                              child: const Text('Sign up'),
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
                                child: BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    return IconButton(
                                      icon: Image.asset(
                                        'assets/img/logo_facebook.png',
                                      ),
                                      iconSize: 50,
                                      onPressed: _isLoading(state)
                                          ? null
                                          : _loginWithFacebook(context),
                                    );
                                  },
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
                                child: BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    return IconButton(
                                      icon: Image.asset(
                                        'assets/img/logo_google.png',
                                      ),
                                      iconSize: 50,
                                      onPressed: _isLoading(state)
                                          ? null
                                          : _loginWithGoogle(context),
                                    );
                                  },
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
        },
      ),
    );
  }
}
