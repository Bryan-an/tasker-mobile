import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tasker_mobile/src/common_widgets/custom_scroll_behavior/custom_scroll_behavior.dart';
import 'package:tasker_mobile/src/constants/globals.dart';
import 'package:tasker_mobile/src/features/auth/application/auth_service.dart';
import 'package:tasker_mobile/src/features/auth/application/user_service.dart';
import 'package:tasker_mobile/src/features/auth/data/auth_repository.dart';
import 'package:tasker_mobile/src/features/auth/data/user_repository.dart';
import 'package:tasker_mobile/src/features/auth/domain/user.dart';
import 'package:tasker_mobile/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:tasker_mobile/src/features/auth/presentation/cubit/session_cubit.dart';
import 'package:tasker_mobile/src/features/auth/presentation/screens/login/login_screen.dart';
import 'package:tasker_mobile/src/features/auth/presentation/screens/register/register_screen.dart';
import 'package:tasker_mobile/src/features/auth/presentation/screens/verify_email/verify_email_screen.dart';
import 'package:tasker_mobile/src/features/settings/application/settings_service.dart';
import 'package:tasker_mobile/src/features/settings/data/settings_repository.dart';
import 'package:tasker_mobile/src/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:tasker_mobile/src/features/settings/presentation/screens/settings/settings_screen.dart';
import 'package:tasker_mobile/src/features/tasks/application/task_service.dart';
import 'package:tasker_mobile/src/features/tasks/data/task_repository.dart';
import 'package:tasker_mobile/src/features/tasks/domain/task.dart';
import 'package:tasker_mobile/src/features/tasks/presentation/bloc/task_bloc.dart';
import 'package:tasker_mobile/src/features/tasks/presentation/screens/all_tasks/all_tasks_screen.dart';
import 'package:tasker_mobile/src/features/tasks/presentation/screens/filter/filter_screen.dart';
import 'package:tasker_mobile/src/features/tasks/presentation/screens/home/home_screen.dart';
import 'package:tasker_mobile/src/features/tasks/presentation/screens/task_form/task_form_screen.dart';
import 'package:tasker_mobile/src/features/tasks/presentation/screens/timeline/timeline_screen.dart';
import 'package:tasker_mobile/src/router/route_utils.dart';
import 'package:tasker_mobile/src/themes/themes.dart';
import 'package:tasker_mobile/src/utils/app_bloc_observer.dart';
import 'package:tasker_mobile/src/utils/local_notice_service.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  Bloc.observer = AppBlocObserver();
  final deviceInfo = await DeviceInfoPlugin().deviceInfo;

  final androidSdkVersion =
      deviceInfo is AndroidDeviceInfo ? deviceInfo.version.sdkInt : 0;

  await LocalNoticeService().setup();

  runApp(
    MultiRepositoryProvider(
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
        RepositoryProvider(
          create: (context) => SettingsRepository(service: SettingsService()),
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
            )..add(const AuthEvent.startApp()),
          ),
          BlocProvider(
            create: (context) => TaskBloc(
              taskRepository: context.read<TaskRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => SettingsBloc(
              settingsRepository: context.read<SettingsRepository>(),
            ),
          ),
        ],
        child: MyApp(androidSdkVersion: androidSdkVersion),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.androidSdkVersion});

  final int androidSdkVersion;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();

    _router = GoRouter(
      initialLocation: AppScreen.home.toPath,
      routes: <RouteBase>[
        GoRoute(
          path: AppScreen.home.toPath,
          name: AppScreen.home.name,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: AppScreen.login.toPath,
          name: AppScreen.login.name,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: AppScreen.register.toPath,
          name: AppScreen.register.name,
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: AppScreen.verifyEmail.toPath,
          name: AppScreen.verifyEmail.name,
          builder: (context, state) {
            User user = state.extra as User;
            return VerifyEmailScreen(user: user);
          },
        ),
        GoRoute(
          path: AppScreen.filter.toPath,
          name: AppScreen.filter.name,
          builder: (context, state) => const FilterScreen(),
        ),
        GoRoute(
          path: AppScreen.taskForm.toPath,
          name: AppScreen.taskForm.name,
          builder: (context, state) {
            final taskToUpdate = state.extra as Task?;
            return TaskFormScreen(taskToUpdate: taskToUpdate);
          },
        ),
        GoRoute(
          path: AppScreen.timeline.toPath,
          name: AppScreen.timeline.name,
          builder: (context, state) => const TimelineScreen(),
        ),
        GoRoute(
          path: AppScreen.allTasks.toPath,
          name: AppScreen.allTasks.name,
          builder: (context, state) => const AllTasksScreen(),
        ),
        GoRoute(
          path: AppScreen.settings.toPath,
          name: AppScreen.settings.name,
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
      redirect: (BuildContext context, GoRouterState state) {
        final sessionState = context.read<SessionCubit>().state;
        final authenticated = sessionState is Authenticated;

        final bool isGoingToRegister =
            state.subloc == AppScreen.register.toPath;

        final bool isGoingToLogin = state.subloc == AppScreen.login.toPath;

        final bool isGoingToVerifyEmail =
            state.subloc == AppScreen.verifyEmail.toPath;

        if (!authenticated &&
            !(isGoingToRegister || isGoingToLogin || isGoingToVerifyEmail)) {
          return AppScreen.login.toPath;
        } else if (authenticated &&
            (isGoingToRegister || isGoingToLogin || isGoingToVerifyEmail)) {
          return AppScreen.home.toPath;
        } else {
          return null;
        }
      },
      refreshListenable:
          GoRouterRefreshStream(context.read<SessionCubit>().stream),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SettingsBloc, SettingsState, ThemeMode>(
      selector: (state) => state.themeMode,
      builder: (context, themeMode) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: themeMode,
          title: 'Tasker',
          routerConfig: _router,
          scaffoldMessengerKey: scaffoldMessengerKey,
          scrollBehavior:
              CustomScrollBehavior(androidSdkVersion: widget.androidSdkVersion),
        );
      },
    );
  }
}
