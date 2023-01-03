import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/router/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

import 'bloc/register_screen_bloc.dart';

class RegisterScreen extends StatelessWidget with InputValidationMixin {
  final _nameInputController = TextEditingController();
  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();

  RegisterScreen({super.key});

  void _clearNameInput() {
    _nameInputController.clear();
  }

  void _clearEmailInput() {
    _emailInputController.clear();
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

  void _clearPasswordInput() {
    _passwordInputController.clear();
  }

  String? _validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password required';
    } else {
      return null;
    }
  }

  RegisterScreenBloc _createBloc(BuildContext context) {
    return RegisterScreenBloc(
      authRepository: context.read<AuthRepository>(),
    );
  }

  void _blocListener(BuildContext context, RegisterScreenState state) {
    if (state.status.isSuccess) {
      context.push(AppScreen.verifyEmail.toPath, extra: state.user);
    }
  }

  VoidCallback _togglePasswordVisibility(BuildContext context) {
    return () {
      context.read<RegisterScreenBloc>().add(TogglePasswordVisibility());
    };
  }

  VoidCallback _register(BuildContext context) {
    return () {
      if (_formGlobalKey.currentState!.validate()) {
        final String name = _nameInputController.text;
        final String email = _emailInputController.text;
        final String password = _passwordInputController.text;

        final user = User(
          name: name,
          email: email,
          password: password,
        );

        context.read<RegisterScreenBloc>().add(Register(user));
      }
    };
  }

  VoidCallback _goToLogin(BuildContext context) {
    return () {
      context.pop();
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: _createBloc,
      child: Builder(
        builder: (context) {
          return BlocListener<RegisterScreenBloc, RegisterScreenState>(
            listener: _blocListener,
            child: SafeArea(
              child: Scaffold(
                appBar: AppBar(),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 22, right: 22, bottom: 22),
                              child: HeaderWidget('Create Account'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 22),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Image.asset(
                              'assets/img/logo_orange.png',
                              fit: BoxFit.contain,
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
                                      keyboardType: TextInputType.name,
                                      controller: _nameInputController,
                                      label: 'Name',
                                      hint: 'Enter your name',
                                      suffixIcon: IconButton(
                                        onPressed: _clearNameInput,
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
                                    child: BlocSelector<RegisterScreenBloc,
                                        RegisterScreenState, bool>(
                                      selector: (state) =>
                                          state.passwordVisible,
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
                                    child: BlocSelector<RegisterScreenBloc,
                                        RegisterScreenState, Status>(
                                      selector: (state) => state.status,
                                      builder: (context, state) {
                                        return FilledButtonWidget(
                                          onPressed: (state.isLoading)
                                              ? null
                                              : _register(context),
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
                                              : const Text('Sign up'),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(22),
                            child: TextButton(
                              onPressed: _goToLogin(context),
                              child: const Text(
                                'I already have an account',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
