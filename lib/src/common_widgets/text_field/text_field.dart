import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';

import 'cubit/text_field_cubit.dart';

class TextFieldWidget extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? error;
  final bool? obscureText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? maxLines;

  const TextFieldWidget(
      {super.key,
      this.label,
      this.hint,
      this.error,
      this.obscureText,
      this.controller,
      this.suffixIcon,
      this.validator,
      this.keyboardType,
      this.inputFormatters,
      this.maxLength,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextFieldCubit(),
      child: Builder(
        builder: (context) {
          return BlocSelector<TextFieldCubit, TextFieldState, bool>(
            selector: (state) => state.isError,
            builder: (context, state) {
              return Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.fromSeed(
                  seedColor: secondaryColor,
                  primary:
                      state ? Theme.of(context).errorColor : secondaryColor,
                )),
                child: TextFormField(
                  maxLines: maxLines,
                  maxLength: maxLength,
                  keyboardType: keyboardType,
                  controller: controller,
                  obscureText: obscureText == null ? false : obscureText!,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: label,
                    hintText: hint,
                    errorText: error,
                    suffixIcon: suffixIcon,
                    floatingLabelStyle: TextStyle(
                      color:
                          state ? Theme.of(context).errorColor : secondaryColor,
                    ),
                  ),
                  validator: (validator != null)
                      ? (text) {
                          String? error = validator!(text);

                          if (error == null) {
                            context.read<TextFieldCubit>().setIsError(false);
                          } else {
                            context.read<TextFieldCubit>().setIsError(true);
                          }

                          return error;
                        }
                      : null,
                  inputFormatters: inputFormatters,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
