import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';

import 'bloc/text_field_bloc.dart';

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

  const TextFieldWidget({
    super.key,
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
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextFieldBloc(),
      child: _TextField(this),
    );
  }
}

class _TextField extends StatelessWidget {
  final TextFieldWidget widget;

  const _TextField(this.widget);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      builder: (context, state) {
        return Theme(
          data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.fromSeed(
            seedColor: secondaryColor,
            primary:
                state.isError ? Theme.of(context).errorColor : secondaryColor,
          )),
          child: TextFormField(
            maxLength: widget.maxLength,
            keyboardType: widget.keyboardType,
            controller: widget.controller,
            obscureText:
                widget.obscureText == null ? false : widget.obscureText!,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: widget.label,
              hintText: widget.hint,
              errorText: widget.error,
              suffixIcon: widget.suffixIcon,
              floatingLabelStyle: TextStyle(
                color: state.isError
                    ? Theme.of(context).errorColor
                    : secondaryColor,
              ),
            ),
            validator: (widget.validator != null)
                ? (text) {
                    String? error = widget.validator!(text);

                    if (error == null) {
                      context
                          .read<TextFieldBloc>()
                          .add(const SetIsError(false));
                    } else {
                      context.read<TextFieldBloc>().add(const SetIsError(true));
                    }

                    return error;
                  }
                : null,
            inputFormatters: widget.inputFormatters,
          ),
        );
      },
    );
  }
}
