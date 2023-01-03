import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/features/auth/presentation/screens/login/bloc/login_screen_bloc.dart';
import 'package:tasker_mobile/src/router/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

class LoginScreen extends StatelessWidget with InputValidationMixin {
  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();

  LoginScreen({super.key});

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
      context.read<LoginScreenBloc>().add(TogglePasswordVisibility());
    };
  }

  VoidCallback _login(BuildContext context) {
    return () {
      if (_formGlobalKey.currentState!.validate()) {
        final String email = _emailInputController.text;
        final String password = _passwordInputController.text;
        final user = User(email: email, password: password);

        context.read<LoginScreenBloc>().add(Login(user));
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
      context.read<LoginScreenBloc>().add(LoginWithFacebook());
    };
  }

  VoidCallback _loginWithGoogle(BuildContext context) {
    return () {
      context.read<LoginScreenBloc>().add(LoginWithGoogle());
    };
  }

  LoginScreenBloc _createBloc(BuildContext context) {
    return LoginScreenBloc(
      authBloc: context.read<AuthBloc>(),
      authRepository: context.read<AuthRepository>(),
      userRepository: context.read<UserRepository>(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: _createBloc,
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
                                  child: BlocSelector<LoginScreenBloc,
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
                                  child: BlocSelector<LoginScreenBloc,
                                      LoginScreenState, Status>(
                                    selector: (state) => state.status,
                                    builder: (context, state) {
                                      return FilledButtonWidget(
                                        onPressed: (state.isLoading)
                                            ? null
                                            : _login(context),
                                        child: (state.isLoading)
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
                                child: IconButton(
                                  icon: Image.asset(
                                    'assets/img/logo_facebook.png',
                                  ),
                                  iconSize: 50,
                                  onPressed: _loginWithFacebook(context),
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
                                  onPressed: _loginWithGoogle(context),
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
