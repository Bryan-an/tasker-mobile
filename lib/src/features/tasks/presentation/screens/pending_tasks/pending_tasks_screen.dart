import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';

class PendingTasksScreen extends StatelessWidget {
  const PendingTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pending tasks'),
          centerTitle: true,
        ),
        drawer: const DrawerNavigator(),
        body: const Center(
          child: Text('Pending tasks screen'),
        ),
      ),
    );
  }
}