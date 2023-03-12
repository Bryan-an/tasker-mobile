import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/constants/export.dart';

class EmptyWidget extends StatelessWidget {
  final String? title;
  final String? text;

  const EmptyWidget({super.key, this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/img/empty.png',
            fit: BoxFit.contain,
            color: primaryColor.withOpacity(0.4),
            width: MediaQuery.of(context).size.width / 2,
          ),
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
                bottom: 8,
              ),
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
