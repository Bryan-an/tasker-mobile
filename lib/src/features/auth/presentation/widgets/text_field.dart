import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? error;
  final bool? obscureText;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  const TextFieldWidget({
    super.key,
    this.label,
    this.hint,
    this.error,
    this.obscureText,
    this.controller,
    this.suffixIcon,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText == null ? false : widget.obscureText!,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.label,
        hintText: widget.hint,
        errorText: widget.error,
        suffixIcon: widget.suffixIcon,
      ),
    );
  }
}
