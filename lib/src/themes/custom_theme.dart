import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/themes/export.dart';

class _AppTheme extends InheritedWidget {
  final AppThemeState data;

  const _AppTheme({
    required this.data,
    required super.child,
  });

  @override
  bool updateShouldNotify(_AppTheme oldWidget) {
    return true;
  }
}

class AppTheme extends StatefulWidget {
  final Widget child;
  final AppThemeKeys initialThemeKey;

  const AppTheme({
    super.key,
    required this.initialThemeKey,
    required this.child,
  });

  @override
  State<AppTheme> createState() => AppThemeState();

  static ThemeData of(BuildContext context) {
    _AppTheme inherited =
        context.dependOnInheritedWidgetOfExactType<_AppTheme>()!;

    return inherited.data.theme;
  }

  static AppThemeState instanceOf(BuildContext context) {
    _AppTheme inherited =
        context.dependOnInheritedWidgetOfExactType<_AppTheme>()!;

    return inherited.data;
  }
}

class AppThemeState extends State<AppTheme> {
  late ThemeData _theme;

  ThemeData get theme => _theme;

  @override
  void initState() {
    _theme = AppThemes.getThemeFromKey(widget.initialThemeKey);
    super.initState();
  }

  void changeTheme(AppThemeKeys themeKey) {
    setState(() {
      _theme = AppThemes.getThemeFromKey(themeKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    return _AppTheme(
      data: this,
      child: widget.child,
    );
  }
}
