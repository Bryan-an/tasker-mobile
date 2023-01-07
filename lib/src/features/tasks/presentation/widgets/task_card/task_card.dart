import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';

class TaskCardWidget extends StatelessWidget {
  final Task task;
  final _dateFormat = DateFormat('HH:mm');

  TaskCardWidget({super.key, required this.task});

  double _getLevelValue(String level) {
    if (level == TaskLevel.high.toName) {
      return 1;
    } else if (level == TaskLevel.medium.toName) {
      return 0.6;
    } else if (level == TaskLevel.low.toName) {
      return 0.20;
    } else {
      return 0;
    }
  }

  Color _getLevelColor(String level) {
    if (level == TaskLevel.high.toName) {
      return primaryColor;
    } else if (level == TaskLevel.medium.toName) {
      return secondaryColor;
    } else {
      return greenColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    int colorIndex = -1;
    final title = task.title;
    final labels = task.labels;
    final description = task.description;
    final from = task.from;
    final to = task.to;
    final done = task.done;
    final priority = task.priority;
    final complexity = task.complexity;

    return Opacity(
      opacity: (done!) ? 0.5 : 1,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: (done) ? highlightColor : null,
          border: Border.all(color: blackColor.withOpacity(0.25)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ReorderableDragStartListener(
              index: context.watch<TaskBloc>().state.tasks.indexOf(task),
              child: const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.drag_indicator),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null)
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            decoration:
                                (done) ? TextDecoration.lineThrough : null,
                          ),
                    ),
                  if (labels != null)
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: labels.length,
                              itemBuilder: (context, index) {
                                final label = labels[index];
                                colorIndex++;

                                if (colorIndex == chipColors.length) {
                                  colorIndex = 0;
                                }

                                return Chip(
                                  label: Text(
                                    label,
                                    style: const TextStyle(
                                      color: whiteColor,
                                    ),
                                  ),
                                  backgroundColor: chipColors[colorIndex],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 4,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (description != null) Text(description),
                  if (from != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(children: [
                        const Icon(Icons.watch_later),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(_dateFormat.format(from)),
                        if (to != null) Text(' - ${_dateFormat.format(to)}'),
                      ]),
                    ),
                ],
              ),
            ),
            Column(
              children: [
                Checkbox(
                  value: done,
                  onChanged: (bool? value) => context.read<TaskBloc>().add(
                        UpdateTask(
                          task.copyWith(done: value),
                        ),
                      ),
                ),
                Row(
                  children: [
                    if (priority != null)
                      Column(
                        children: [
                          SizedBox(
                            width: 5,
                            height: 50,
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: LinearProgressIndicator(
                                color: _getLevelColor(priority),
                                value: _getLevelValue(priority),
                                backgroundColor: (done) ? null : highlightColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text('P'),
                        ],
                      ),
                    if (complexity != null)
                      const SizedBox(
                        width: 8,
                      ),
                    if (complexity != null)
                      Column(
                        children: [
                          SizedBox(
                            width: 5,
                            height: 50,
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: LinearProgressIndicator(
                                color: _getLevelColor(complexity),
                                value: _getLevelValue(complexity),
                                backgroundColor: (done) ? null : highlightColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text('C'),
                        ],
                      ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
