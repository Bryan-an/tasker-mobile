import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/router/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TaskBloc>().add(const GetTasks());
  }

  String _getProgressPercentage(double progress) {
    if (progress.isNaN || progress.isInfinite) {
      return '0%';
    }

    return '${(progress * 100).round()}%';
  }

  double _getProgressValue(double progress) {
    if (progress.isNaN || progress.isInfinite) {
      return 0;
    }

    return progress;
  }

  @override
  Widget build(BuildContext context) {
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
                              child: Slidable(
                                key: ValueKey(task.id!),
                                startActionPane: ActionPane(
                                  motion: const StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      onPressed: (context) => context.push(
                                          AppScreen.taskForm.toPath,
                                          extra: task),
                                      icon: Icons.edit,
                                      backgroundColor: secondaryColor,
                                      foregroundColor: whiteColor,
                                    ),
                                  ],
                                ),
                                endActionPane: ActionPane(
                                  dismissible: DismissiblePane(
                                    onDismissed: () =>
                                        context.read<TaskBloc>().add(
                                              DeleteTask(task.id!),
                                            ),
                                  ),
                                  motion: const StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      onPressed: (context) =>
                                          context.read<TaskBloc>().add(
                                                DeleteTask(task.id!),
                                              ),
                                      icon: Icons.delete,
                                      backgroundColor: primaryColor,
                                      foregroundColor: whiteColor,
                                    ),
                                  ],
                                ),
                                child: TaskCardWidget(task: task),
                              ),
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
          onPressed: () => context.push(AppScreen.taskForm.toPath),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
