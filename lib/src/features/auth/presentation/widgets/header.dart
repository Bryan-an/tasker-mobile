import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;

  const HeaderWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Log In',
      style: Theme.of(context).textTheme.headline1,
      textAlign: TextAlign.center,
    );
  }
}
