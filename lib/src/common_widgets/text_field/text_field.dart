import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tasker_mobile/src/constants/export.dart';

class TextFieldWidget extends StatefulWidget {
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
  final TextCapitalization textCapitalization;

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
    this.maxLines,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(
        seedColor: secondaryColor,
        primary: isError ? Theme.of(context).colorScheme.error : secondaryColor,
      )),
      child: TextFormField(
        textCapitalization: widget.textCapitalization,
        maxLines: (widget.obscureText == null && widget.maxLines != null)
            ? widget.maxLines
            : 1,
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        obscureText: widget.obscureText == null ? false : widget.obscureText!,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.label,
          hintText: widget.hint,
          errorText: widget.error,
          suffixIcon: widget.suffixIcon,
          floatingLabelStyle: TextStyle(
            color:
                isError ? Theme.of(context).colorScheme.error : secondaryColor,
          ),
        ),
        validator: (widget.validator != null)
            ? (text) {
                String? error = widget.validator!(text);

                if (error == null) {
                  setState(() {
                    isError = false;
                  });
                } else {
                  setState(() {
                    isError = true;
                  });
                }

                return error;
              }
            : null,
        inputFormatters: widget.inputFormatters,
      ),
    );
  }
}
