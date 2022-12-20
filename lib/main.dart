import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future removeSplashScreen() async {
    await Future.delayed(
        const Duration(seconds: 5), () => FlutterNativeSplash.remove());
  }

  @override
  Widget build(BuildContext context) {
    removeSplashScreen();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasker"),
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
    );
  }
}
