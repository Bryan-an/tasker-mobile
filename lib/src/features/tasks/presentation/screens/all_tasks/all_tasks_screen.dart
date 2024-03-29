import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/router/export.dart';
import 'package:tasker_mobile/src/themes/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

class AllTasksScreen extends StatelessWidget {
  const AllTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = AppTheme.of(context) == AppThemes.lightTheme;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('All your tasks'),
          centerTitle: true,
        ),
        drawer: const DrawerNavigator(),
        body: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, state) {
            LocalNoticeService().cancelAllNotifications();

            if (state.getTasksStatus.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Column(
              children: [
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
                                  TaskEvent.reorderTaskList(
                                    oldIndex: oldIndex,
                                    newIndex: newIndex,
                                  ),
                                ),
                        children: [
                          for (final task in tasks)
                            Container(
                              key: Key(task.id!),
                              margin: const EdgeInsets.only(
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
                                      backgroundColor: isLightTheme
                                          ? secondaryColor
                                          : secondaryDarkColor,
                                      foregroundColor: whiteColor,
                                    ),
                                  ],
                                ),
                                endActionPane: ActionPane(
                                  dismissible: DismissiblePane(
                                    onDismissed: () {
                                      context.read<TaskBloc>().add(
                                            TaskEvent.deleteTask(id: task.id!),
                                          );
                                    },
                                  ),
                                  motion: const StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      onPressed: (context) => context
                                          .read<TaskBloc>()
                                          .add(
                                            TaskEvent.deleteTask(id: task.id!),
                                          ),
                                      icon: Icons.delete,
                                      backgroundColor: isLightTheme
                                          ? primaryColor
                                          : primaryDarkColor,
                                      foregroundColor: whiteColor,
                                    ),
                                  ],
                                ),
                                child: Builder(
                                  builder: (context) {
                                    if (task.remind! && !task.done!) {
                                      int notificationTime;

                                      if (task.from != null) {
                                        notificationTime =
                                            task.from!.millisecondsSinceEpoch;
                                      } else {
                                        notificationTime = task.date!
                                            .add(const Duration(hours: 6))
                                            .millisecondsSinceEpoch;
                                      }

                                      if (notificationTime >
                                          DateTime.now()
                                              .millisecondsSinceEpoch) {
                                        LocalNoticeService().addNotification(
                                          title: task.title,
                                          body: task.description,
                                          time: notificationTime,
                                          channel: 'to-do',
                                        );
                                      }
                                    }

                                    return TaskCardWidget(task: task);
                                  },
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
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
