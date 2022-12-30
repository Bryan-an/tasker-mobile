import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/routes/route_utils.dart';

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
