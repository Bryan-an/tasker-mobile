import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

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
  final VerifyEmailScreen screen;

  const _VerifyEmailScreen(this.screen);

  @override
  State<_VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<_VerifyEmailScreen> {
  final _codeInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();
  late Timer _timer;
  int _count = 59;

  void startTimer() {
    const oneSec = Duration(seconds: 1);

    _timer = Timer.periodic(oneSec, (timer) {
      if (_count == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _count--;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailScreenBloc, VerifyEmailScreenState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          context.read<AuthBloc>().add(LoginUser(user: widget.screen.user));
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
                                  onPressed: () => _codeInputController.clear(),
                                  icon: const Icon(Icons.clear),
                                ),
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                validator: (code) {
                                  if (code == null || code.isEmpty) {
                                    return 'Verification code required';
                                  } else if (code.length < 6) {
                                    return 'Enter 6 digits';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      BlocBuilder<VerifyEmailScreenBloc,
                          VerifyEmailScreenState>(
                        builder: (context, state) {
                          return Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Text('Your code expires in'),
                                      ),
                                      Text(
                                          '0:${_count.toString().padLeft(2, '0')}'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(22),
                            child: TextButton(
                              onPressed: () {
                                final email = widget.screen.user.email;
                                final data = Verification(email: email);

                                context
                                    .read<VerifyEmailScreenBloc>()
                                    .add(ResendCode(data));

                                setState(() {
                                  _timer.cancel();
                                  _count = 59;
                                });

                                startTimer();
                              },
                              child: const Text(
                                'Resend code',
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
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
                                onPressed: () => context.pop(),
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
                              child: BlocBuilder<VerifyEmailScreenBloc,
                                  VerifyEmailScreenState>(
                                builder: (context, state) {
                                  return FilledButtonWidget(
                                    onPressed: (state.status == Status.loading)
                                        ? null
                                        : () {
                                            if (_formGlobalKey.currentState!
                                                .validate()) {
                                              final String email =
                                                  widget.screen.user.email ??
                                                      '';
                                              final String code =
                                                  _codeInputController.text;
                                              final data = Verification(
                                                email: email,
                                                code: code,
                                              );

                                              context
                                                  .read<VerifyEmailScreenBloc>()
                                                  .add(VerifyEmail(data));
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
