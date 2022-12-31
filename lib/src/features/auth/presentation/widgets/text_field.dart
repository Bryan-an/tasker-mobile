import 'package:flutter/material.dart';
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
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _isError = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(
        seedColor: secondaryColor,
        primary: _isError ? Theme.of(context).errorColor : secondaryColor,
      )),
      child: TextFormField(
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
            color: _isError ? Theme.of(context).errorColor : secondaryColor,
          ),
        ),
        validator: (widget.validator != null)
            ? (text) {
                String? error = widget.validator!(text);

                if (error == null) {
                  setState(() {
                    _isError = false;
                  });
                } else {
                  setState(() {
                    _isError = true;
                  });
                }

                return error;
              }
            : null,
      ),
    );
  }
}
