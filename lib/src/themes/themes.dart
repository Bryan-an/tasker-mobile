import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tasker_mobile/src/constants/export.dart';

enum AppThemeKeys { light, dark }

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: primaryColor,
      ),
      foregroundColor: blackColor,
      color: whiteColor,
      elevation: 0,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: secondaryLightColor,
      cursorColor: secondaryColor,
      selectionHandleColor: secondaryColor,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      primary: primaryColor,
      secondary: secondaryColor,
      background: whiteColor,
    ),
    brightness: Brightness.light,
    highlightColor: highlightColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      focusColor: primaryDarkColor,
      splashColor: highlightColor,
    ),
    scaffoldBackgroundColor: whiteColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        fontSize: 18,
      ),
    ).apply(
      bodyColor: blackColor,
      displayColor: blackColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: secondaryColor,
        ),
      ),
      labelStyle: TextStyle(color: blackColor),
      floatingLabelStyle: TextStyle(color: secondaryColor),
      focusColor: secondaryColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
        overlayColor: MaterialStateProperty.all<Color>(
          primaryLightColor.withOpacity(0.1),
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    backgroundColor: blackColor,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: primaryDarkColor,
      ),
      foregroundColor: whiteColor,
      color: blackColor,
      elevation: 0,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: secondaryColor,
      cursorColor: secondaryDarkColor,
      selectionHandleColor: secondaryDarkColor,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryDarkColor,
      primary: primaryDarkColor,
      secondary: secondaryDarkColor,
      background: blackColor,
      brightness: Brightness.dark,
    ),
    brightness: Brightness.dark,
    highlightColor: primaryColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryDarkColor,
      focusColor: primaryColor,
      splashColor: primaryLightColor,
      foregroundColor: whiteColor,
    ),
    scaffoldBackgroundColor: blackColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        fontSize: 18,
      ),
    ).apply(
      bodyColor: whiteColor,
      displayColor: whiteColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: whiteColor.withOpacity(0.25),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: secondaryDarkColor,
        ),
      ),
      labelStyle: const TextStyle(color: whiteColor),
      floatingLabelStyle: const TextStyle(color: secondaryLightColor),
      focusColor: secondaryColor,
      iconColor: whiteColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(primaryDarkColor),
        overlayColor: MaterialStateProperty.all<Color>(
          primaryColor.withOpacity(0.1),
        ),
      ),
    ),
  );

  static ThemeData getThemeFromKey(AppThemeKeys themeKey) {
    switch (themeKey) {
      case AppThemeKeys.light:
        return lightTheme;
      case AppThemeKeys.dark:
        return darkTheme;
      default:
        return lightTheme;
    }
  }
}

extension AppThemeKeysExtension on AppThemeKeys {
  String get toName {
    switch (this) {
      case AppThemeKeys.light:
        return "light";
      case AppThemeKeys.dark:
        return "dark";
      default:
        return "light";
    }
  }
}
