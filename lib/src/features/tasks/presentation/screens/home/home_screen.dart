import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/colors.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';

class HomeScreen extends StatelessWidget {
  final List<String> tasks =
      List<String>.generate(10, (index) => 'Task $index');

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tasks'),
          centerTitle: true,
        ),
        drawer: const DrawerNavigator(),
        body: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Progress: 25%',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: primaryColor.withOpacity(0.1),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(
                  top: 16,
                  right: 16,
                  left: 16,
                  bottom: 80,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(tasks[index]),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: tasks.length,
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<AuthBloc>().add(
                LogoutUser(),
              ),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
