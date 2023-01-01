import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;

  const OutlinedButtonWidget({super.key, this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
        padding:
            MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(16)),
      ),
      child: child,
    );
  }
}
