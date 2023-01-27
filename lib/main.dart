import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/router/export.dart';
import 'package:tasker_mobile/src/themes/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: primaryColor,
    ),
  );

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  Bloc.observer = AppBlocObserver();
  final deviceInfo = await DeviceInfoPlugin().deviceInfo;

  final androidSdkVersion =
      deviceInfo is AndroidDeviceInfo ? deviceInfo.version.sdkInt : 0;

  runApp(
    AppTheme(
      initialThemeKey: AppThemeKeys.light,
      child: MyApp(androidSdkVersion: androidSdkVersion),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.androidSdkVersion});

  final _router = AppRouter();
  final int androidSdkVersion;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(service: AuthService()),
        ),
        RepositoryProvider(
          create: (context) => UserRepository(service: UserService()),
        ),
        RepositoryProvider(
          create: (context) => TaskRepository(service: TaskService()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SessionCubit(),
          ),
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: context.read<AuthRepository>(),
              userRepository: context.read<UserRepository>(),
              sessionCubit: context.read<SessionCubit>(),
            )..add(
                AppStart(),
              ),
          ),
          BlocProvider(
            create: (context) => TaskBloc(
              taskRepository: context.read<TaskRepository>(),
            ),
          ),
        ],
        child: BlocBuilder<SessionCubit, SessionState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.of(context),
              title: 'Tasker',
              routerConfig: _router.getConfig(state),
              scaffoldMessengerKey: scaffoldMessengerKey,
              scrollBehavior:
                  CustomScrollBehavior(androidSdkVersion: androidSdkVersion),
            );
          },
        ),
      ),
    );
  }
}
