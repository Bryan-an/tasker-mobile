import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tasker_mobile/src/constants/colors.dart';

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
    colorScheme: ColorScheme.fromSwatch().copyWith(
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
    ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
      overlayColor: MaterialStateProperty.all<Color>(
        primaryLightColor.withOpacity(0.1),
      ),
    )),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    brightness: Brightness.dark,
    highlightColor: primaryColor,
    backgroundColor: blackColor,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: primaryDarkColor,
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
