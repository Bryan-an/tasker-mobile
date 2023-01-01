import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/routes/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

import 'bloc/register_screen_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterScreenBloc(
        authRepository: context.read<AuthRepository>(),
      ),
      child: _RegisterScreen(),
    );
  }
}

class _RegisterScreen extends StatelessWidget with InputValidationMixin {
  final _nameInputController = TextEditingController();
  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();

  _RegisterScreen();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterScreenBloc, RegisterScreenState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          context.push(AppScreen.verifyEmail.toPath, extra: state.user);
        }
      },
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
                        padding:
                            EdgeInsets.only(left: 22, right: 22, bottom: 22),
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
                                  onPressed: () => _nameInputController.clear(),
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
                                  onPressed: () =>
                                      _emailInputController.clear(),
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
                              child: BlocBuilder<RegisterScreenBloc,
                                  RegisterScreenState>(
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
                                              .read<RegisterScreenBloc>()
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
                                      if (password == null ||
                                          password.isEmpty) {
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
                              child: BlocBuilder<RegisterScreenBloc,
                                  RegisterScreenState>(
                                builder: (context, state) {
                                  return FilledButtonWidget(
                                    onPressed: (state.status == Status.loading)
                                        ? null
                                        : () {
                                            if (_formGlobalKey.currentState!
                                                .validate()) {
                                              final String name =
                                                  _nameInputController.text;
                                              final String email =
                                                  _emailInputController.text;
                                              final String password =
                                                  _passwordInputController.text;

                                              final user = User(
                                                name: name,
                                                email: email,
                                                password: password,
                                              );

                                              context
                                                  .read<RegisterScreenBloc>()
                                                  .add(Register(user));
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
                        onPressed: () => context.pop(),
                        child: const Text('I already have an account',
                            style: TextStyle(
                                decoration: TextDecoration.underline)),
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
  }
}
