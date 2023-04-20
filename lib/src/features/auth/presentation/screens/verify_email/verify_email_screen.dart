import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';

import 'cubit/verify_email_screen_cubit.dart';

class VerifyEmailScreen extends StatefulWidget {
  final User user;

  const VerifyEmailScreen({super.key, required this.user});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final _codeInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _codeInputController.dispose();
    super.dispose();
  }

  void _clearCodeInput() {
    _codeInputController.clear();
  }

  String? _validateCode(String? code) {
    if (code == null || code.isEmpty) {
      return 'Verification code required';
    } else if (code.length < 6) {
      return 'Enter 6 digits';
    } else {
      return null;
    }
  }

  VoidCallback _resendCode(BuildContext context) {
    return () {
      final email = widget.user.email;
      final data = Verification(email: email);

      context.read<AuthBloc>().add(AuthEvent.resendCode(data: data));
      context.read<VerifyEmailScreenCubit>().resetTimer();
    };
  }

  VoidCallback _goToRegister(BuildContext context) {
    return () {
      context.pop();
    };
  }

  VoidCallback _verifyEmail(BuildContext context) {
    return () {
      if (_formGlobalKey.currentState!.validate()) {
        final String email = widget.user.email ?? '';
        final String code = _codeInputController.text;
        final data = Verification(
          email: email,
          code: code,
        );

        context.read<AuthBloc>().add(AuthEvent.verifyEmail(data: data));
      }
    };
  }

  void _blocListener(BuildContext context, AuthState state) {
    if (state.verifyEmailStatus.isSuccess) {
      context.read<AuthBloc>().add(AuthEvent.login(user: widget.user));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => VerifyEmailScreenCubit()..startTimer(),
      child: Builder(
        builder: (context) {
          return BlocListener<AuthBloc, AuthState>(
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
                                left: 22,
                                right: 22,
                                bottom: 22,
                              ),
                              child: HeaderWidget('Verify Email'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(22),
                              child: Text(
                                'Please check your email for email verification code!',
                                textAlign: TextAlign.center,
                              ),
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
                                      maxLength: 6,
                                      keyboardType: TextInputType.number,
                                      controller: _codeInputController,
                                      label: 'Code',
                                      hint: 'Enter your verification code',
                                      suffixIcon: IconButton(
                                        onPressed: _clearCodeInput,
                                        icon: const Icon(Icons.clear),
                                      ),
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      validator: _validateCode,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Text('Your code expires in'),
                                        ),
                                        BlocSelector<VerifyEmailScreenCubit,
                                            VerifyEmailScreenState, int>(
                                          selector: (state) => state.timerCount,
                                          builder: (context, state) {
                                            return Text(
                                                '0:${state.toString().padLeft(2, '0')}');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(22),
                                  child:
                                      BlocSelector<AuthBloc, AuthState, Status>(
                                    selector: (state) => state.resendCodeStatus,
                                    builder: (context, state) {
                                      return TextButton(
                                        onPressed: (state == Status.loading)
                                            ? null
                                            : _resendCode(context),
                                        child: (state == Status.loading)
                                            ? const SizedBox(
                                                height: 25,
                                                width: 25,
                                                child:
                                                    CircularProgressIndicator(),
                                              )
                                            : const Text(
                                                'Resend code',
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                      );
                                    },
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
                                      right: 16,
                                      bottom: 10,
                                      top: 32,
                                    ),
                                    child: OutlinedButtonWidget(
                                      onPressed: _goToRegister(context),
                                      child: const Text('Cancel'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16,
                                      right: 32,
                                      bottom: 10,
                                      top: 32,
                                    ),
                                    child: BlocBuilder<AuthBloc, AuthState>(
                                      builder: (context, state) {
                                        return FilledButtonWidget(
                                          onPressed:
                                              (state.loginStatus.isLoading ||
                                                      state.verifyEmailStatus
                                                          .isLoading)
                                                  ? null
                                                  : _verifyEmail(context),
                                          child: (state.loginStatus.isLoading ||
                                                  state.verifyEmailStatus
                                                      .isLoading)
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
                                              : const Text('Verify'),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
