import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/themes/export.dart';

class EmptyWidget extends StatelessWidget {
  final String? title;
  final String? text;

  const EmptyWidget({super.key, this.title, this.text});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = AppTheme.of(context) == AppThemes.lightTheme;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            isLightTheme
                ? 'assets/gif/emptystate.gif'
                : 'assets/img/emptystate.png',
            fit: BoxFit.contain,
          ),
          if (title != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title!,
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(color: primaryColor.withOpacity(0.4)),
                textAlign: TextAlign.center,
              ),
            ),
          if (text != null)
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: primaryColor.withOpacity(0.4),
              ),
            )
        ],
      ),
    );
  }
}
