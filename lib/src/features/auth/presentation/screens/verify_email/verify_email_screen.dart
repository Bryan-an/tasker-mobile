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

class _VerifyEmailScreen extends StatelessWidget {
  final _codeInputController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();
  final VerifyEmailScreen widget;

  _VerifyEmailScreen(this.widget);

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailScreenBloc, VerifyEmailScreenState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          context.read<AuthBloc>().add(LoginUser(user: widget.user));
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(22),
                            child: TextButton(
                              onPressed: () {
                                final email = widget.user.email;
                                final data = Verification(email: email);

                                context
                                    .read<VerifyEmailScreenBloc>()
                                    .add(ResendCode(data));
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
                                                  widget.user.email ?? '';
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
