import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/router/export.dart';

class AppRouter {
  GoRouter getConfig(SessionState sessionState) {
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
          builder: (context, state) => LoginScreen(),
        ),
        GoRoute(
          path: AppScreen.register.toPath,
          name: AppScreen.register.name,
          builder: (context, state) => RegisterScreen(),
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
      ],
      redirect: (BuildContext context, GoRouterState state) {
        final authenticated = sessionState is Authenticated;

        final bool isGoingToRegister =
            state.subloc == AppScreen.register.toPath;

        final bool isGoingToLogin = state.subloc == AppScreen.login.toPath;

        final bool isGoingToVerifyEmail =
            state.subloc == AppScreen.verifyEmail.toPath;

        if (!(isGoingToRegister || isGoingToLogin || isGoingToVerifyEmail) &&
            !authenticated) {
          return AppScreen.login.toPath;
        } else {
          return null;
        }
      },
    );
  }
}
