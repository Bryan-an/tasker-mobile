import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/themes/export.dart';

class FilledButtonWidget extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;

  const FilledButtonWidget(
      {super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = AppTheme.of(context) == AppThemes.lightTheme;

    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            isLightTheme ? primaryColor : primaryDarkColor),
        foregroundColor: MaterialStateProperty.all<Color>(whiteColor),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return primaryLightColor.withOpacity(0.04);
            }

            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return primaryLightColor.withOpacity(0.12);
            }

            return null;
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
        padding:
            MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(16)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
