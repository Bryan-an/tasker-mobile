import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/common_widgets/drawer/drawer.dart';
import 'package:tasker_mobile/src/constants/colors.dart';
import 'package:tasker_mobile/src/constants/status.dart';
import 'package:tasker_mobile/src/features/settings/domain/settings.dart';
import 'package:tasker_mobile/src/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:tasker_mobile/src/router/route_utils.dart';
import 'package:tasker_mobile/src/themes/app_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final appColors = AppColors.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppScreen.settings.toTitle),
          centerTitle: true,
        ),
        drawer: const DrawerNavigator(),
        body: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            if (state.getSettingsStatus.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final settings = state.settings;

            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: appColors.sectionDivider,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Notifications",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.phone_android),
                  title: const Text("App notifications"),
                  trailing: Switch(
                    activeColor: colorScheme.primary,
                    value: settings.notifications?.mobile ?? false,
                    onChanged: (bool value) => context.read<SettingsBloc>().add(
                          SettingsEvent.updateSettings(
                            settings: Settings(
                              notifications: settings.notifications
                                  ?.copyWith(mobile: value),
                            ),
                          ),
                        ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text("Email notifications"),
                  trailing: Switch(
                    activeColor: colorScheme.primary,
                    value: settings.notifications?.email ?? false,
                    onChanged: (bool value) => context.read<SettingsBloc>().add(
                          SettingsEvent.updateSettings(
                            settings: Settings(
                              notifications: settings.notifications
                                  ?.copyWith(email: value),
                            ),
                          ),
                        ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: appColors.sectionDivider,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Personalization",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.palette),
                  title: const Text("Theme"),
                  trailing: Switch(
                    inactiveThumbColor: whiteColor,
                    inactiveTrackColor: secondaryColor.withOpacity(0.9),
                    activeColor: blackColor,
                    activeTrackColor: primaryDarkColor.withOpacity(0.3),
                    value: state.themeMode == ThemeMode.dark,
                    activeThumbImage: const AssetImage("assets/img/moon.png"),
                    inactiveThumbImage: const AssetImage("assets/img/sun.png"),
                    onChanged: (bool value) => context.read<SettingsBloc>().add(
                          SettingsEvent.updateSettings(
                            settings: Settings(
                              theme: value ? ThemeMode.dark : ThemeMode.light,
                            ),
                          ),
                        ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
