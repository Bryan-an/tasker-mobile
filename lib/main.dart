import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tasker_mobile/src/constants/colors.dart';
import 'package:tasker_mobile/src/features/auth/presentation/login_screen.dart';
import 'package:tasker_mobile/src/themes/custom_theme.dart';
import 'package:tasker_mobile/src/themes/themes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: primaryColor,
    ),
  );

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    const AppTheme(
      initialThemeKey: AppThemeKeys.light,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.of(context),
      title: 'Tasker',
      home: LoginScreen(),
    );
  }
}
