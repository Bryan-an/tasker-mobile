import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/router/export.dart';

class DrawerNavigator extends StatelessWidget {
  const DrawerNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedRoute = GoRouter.of(context).location;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          BlocSelector<AuthBloc, AuthState, String>(
            selector: (state) => state.user.name ?? '',
            builder: (context, state) {
              return SizedBox(
                  height: 80,
                  child: DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ));
            },
          ),
          ListTile(
            selected: selectedRoute == AppScreen.home.toPath,
            leading: const Icon(Icons.add_task),
            title: const Text('Tasks for today'),
            onTap: () {
              context.go(AppScreen.home.toPath);
              context.pop();
            },
          ),
          ListTile(
            selected: selectedRoute == AppScreen.filter.toPath,
            leading: const Icon(Icons.filter_alt),
            title: const Text('Task filter'),
            onTap: () {
              context.go(AppScreen.filter.toPath);
              context.pop();
            },
          ),
          ListTile(
            selected: selectedRoute == AppScreen.timeline.toPath,
            leading: const Icon(Icons.calendar_month),
            title: const Text('Timeline'),
            onTap: () {
              context.go(AppScreen.timeline.toPath);
              context.pop();
            },
          ),
          ListTile(
            selected: selectedRoute == AppScreen.allTasks.toPath,
            leading: const Icon(Icons.checklist_rtl),
            title: const Text('All tasks'),
            onTap: () {
              context.go(AppScreen.allTasks.toPath);
              context.pop();
            },
          ),
          const Divider(),
          ListTile(
            selected: selectedRoute == AppScreen.settings.toPath,
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              context.go(AppScreen.settings.toPath);
              context.pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log out'),
            onTap: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
