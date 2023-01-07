import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/auth/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  String _getProgressPercentage(double progress) {
    if (progress.isNaN || progress.isInfinite) {
      return '0%';
    }

    return '${(progress * 100).toInt()}%';
  }

  double _getProgressValue(double progress) {
    if (progress.isNaN || progress.isInfinite) {
      return 0;
    }

    return progress;
  }

  @override
  Widget build(BuildContext context) {
    context.read<TaskBloc>().add(const GetTasks());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tasks'),
          centerTitle: true,
        ),
        drawer: const DrawerNavigator(),
        body: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, state) {
            if (state.getTasksStatus.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final progress =
                state.tasks.where((task) => task.done!).toList().length /
                    state.tasks.length;

            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            const Text(
                              'Your progress: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(_getProgressPercentage(progress)),
                          ],
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
                          value: _getProgressValue(progress),
                          backgroundColor: primaryColor.withOpacity(0.1),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Builder(
                    builder: (context) {
                      final tasks = state.tasks;

                      if (tasks.isEmpty) {
                        return const EmptyWidget(
                          title: 'No tasks',
                          text: 'No tasks added yet',
                        );
                      }

                      // return ListView.separated(
                      //   padding: const EdgeInsets.only(
                      //     top: 16,
                      //     right: 16,
                      //     left: 16,
                      //     bottom: 80,
                      //   ),
                      //   itemBuilder: (context, index) {
                      //     final task = tasks[index];
                      //     return TaskCardWidget(task: task);
                      //   },
                      //   separatorBuilder: (context, index) => const SizedBox(
                      //     height: 20,
                      //   ),
                      //   itemCount: tasks.length,
                      // );

                      return ReorderableListView(
                        buildDefaultDragHandles: false,
                        padding: const EdgeInsets.only(
                          top: 16,
                          right: 16,
                          left: 16,
                          bottom: 80,
                        ),
                        onReorder: (oldIndex, newIndex) =>
                            context.read<TaskBloc>().add(
                                  ReorderTaskList(
                                    oldIndex: oldIndex,
                                    newIndex: newIndex,
                                  ),
                                ),
                        children: [
                          for (final task in tasks)
                            Padding(
                              key: Key(task.id!),
                              padding: const EdgeInsets.only(
                                top: 2.0,
                                bottom: 2.0,
                              ),
                              child: TaskCardWidget(task: task),
                            ),
                        ],
                      );
                    },
                  ),
                )
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('add task'),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
