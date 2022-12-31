import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/features/auth/presentation/screens/login/bloc/login_screen_bloc.dart';
import 'package:tasker_mobile/src/features/auth/presentation/screens/register/bloc/register_screen_bloc.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/routes/export.dart';

GoRouter router(AuthState authState) {
  return GoRouter(
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
        builder: (context, state) => BlocProvider(
          create: (context) => LoginScreenBloc(
            authBloc: context.read<AuthBloc>(),
            authRepository: context.read<AuthRepository>(),
            userRepository: context.read<UserRepository>(),
          ),
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        path: AppScreen.register.toPath,
        name: AppScreen.register.name,
        builder: (context, state) => BlocProvider(
          create: (context) => RegisterScreenBloc(
            authRepository: context.read<AuthRepository>(),
          ),
          child: const RegisterScreen(),
        ),
      ),
      GoRoute(
        path: AppScreen.verifyEmail.toPath,
        name: AppScreen.verifyEmail.name,
        builder: (context, state) => const VerifyEmailScreen(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final bool isGoingToRegister = state.subloc == AppScreen.register.toPath;
      final bool isGoingToLogin = state.subloc == AppScreen.login.toPath;
      final bool isGoingToVerifyEmail =
          state.subloc == AppScreen.verifyEmail.toPath;

      if (!(isGoingToRegister || isGoingToLogin || isGoingToVerifyEmail) &&
          authState.initialized &&
          !authState.authenticated) {
        return AppScreen.login.toPath;
      } else {
        return null;
      }
    },
  );
}
