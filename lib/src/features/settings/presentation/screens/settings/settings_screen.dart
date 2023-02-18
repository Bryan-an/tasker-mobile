import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/settings/export.dart';
import 'package:tasker_mobile/src/router/export.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(const GetSettings());
  }

  @override
  Widget build(BuildContext context) {
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
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: highlightColor),
                    ),
                  ),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blackColor.withOpacity(0.5),
                      fontSize: 16,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.phone_android),
                  title: const Text("App notifications"),
                  trailing: Switch(
                    activeColor: primaryColor,
                    value: settings.notifications?.mobile ?? false,
                    onChanged: (bool value) => context.read<SettingsBloc>().add(
                          UpdateSettings(
                            Settings(
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
                    activeColor: primaryColor,
                    value: settings.notifications?.email ?? false,
                    onChanged: (bool value) => context.read<SettingsBloc>().add(
                          UpdateSettings(
                            Settings(
                              notifications: settings.notifications
                                  ?.copyWith(email: value),
                            ),
                          ),
                        ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: highlightColor),
                    ),
                  ),
                  child: Text(
                    "Personalization",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blackColor.withOpacity(0.5),
                      fontSize: 16,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.palette),
                  title: const Text("Theme"),
                  trailing: Switch(
                    inactiveThumbColor: secondaryColor,
                    inactiveTrackColor: secondaryColor.withOpacity(0.9),
                    activeColor: blackColor,
                    activeTrackColor: blackColor.withOpacity(0.9),
                    value: state.settings.theme == "dark",
                    activeThumbImage: const AssetImage("assets/img/moon.png"),
                    inactiveThumbImage: const AssetImage("assets/img/sun.png"),
                    onChanged: (bool value) => context.read<SettingsBloc>().add(
                          UpdateSettings(
                            Settings(
                              theme: value ? "dark" : "light",
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
