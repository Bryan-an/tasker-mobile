import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';

import 'bloc/verify_email_screen_bloc.dart';

class VerifyEmailScreen extends StatelessWidget {
  final User user;

  const VerifyEmailScreen({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyEmailScreenBloc(
        authRepository: context.read<AuthRepository>(),
      ),
      child: _VerifyEmailScreen(this),
    );
  }
}

class _VerifyEmailScreen extends StatefulWidget {
  final VerifyEmailScreen provider;

  const _VerifyEmailScreen(this.provider);

  @override
  State<_VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<_VerifyEmailScreen> {
  final _codeInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    var count = context.watch<VerifyEmailScreenBloc>().state.timerCount;
    const oneSec = Duration(seconds: 1);

    _timer = Timer.periodic(oneSec, (timer) {
      if (count == 0) {
        timer.cancel();
      } else {
        context.read<VerifyEmailScreenBloc>().add(Tik());
      }
    });
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

  void _resendCode() {
    final email = widget.provider.user.email;
    final data = Verification(email: email);

    context.read<VerifyEmailScreenBloc>().add(ResendCode(data));

    _timer.cancel();
    context.read<VerifyEmailScreenBloc>().add(RestartTimer());
    _startTimer();
  }

  void _goToRegister() {
    context.pop();
  }

  void _verifyEmail() {
    if (_formGlobalKey.currentState!.validate()) {
      final String email = widget.provider.user.email ?? '';
      final String code = _codeInputController.text;
      final data = Verification(
        email: email,
        code: code,
      );

      context.read<VerifyEmailScreenBloc>().add(VerifyEmail(data));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailScreenBloc, VerifyEmailScreenState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          context.read<AuthBloc>().add(LoginUser(user: widget.provider.user));
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
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text('Your code expires in'),
                                  ),
                                  BlocSelector<VerifyEmailScreenBloc,
                                      VerifyEmailScreenState, int>(
                                    selector: (state) {
                                      return state.timerCount;
                                    },
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
                            child: TextButton(
                              onPressed: _resendCode,
                              child: const Text(
                                'Resend code',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
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
                                right: 16,
                                bottom: 10,
                                top: 32,
                              ),
                              child: OutlinedButtonWidget(
                                onPressed: _goToRegister,
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
                              child: BlocSelector<VerifyEmailScreenBloc,
                                  VerifyEmailScreenState, Status>(
                                selector: (state) => state.status,
                                builder: (context, state) {
                                  return FilledButtonWidget(
                                    onPressed:
                                        (state.isLoading) ? null : _verifyEmail,
                                    child: (state.isLoading)
                                        ? const SizedBox(
                                            height: 25,
                                            width: 25,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                      whiteColor),
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
  }
}
