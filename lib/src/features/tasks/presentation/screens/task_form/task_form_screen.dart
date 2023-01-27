import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

import 'cubit/task_form_screen_cubit.dart';

class TaskFormScreen extends StatefulWidget {
  final Task? taskToUpdate;

  const TaskFormScreen({super.key, this.taskToUpdate});

  @override
  State<TaskFormScreen> createState() => _TaskFormScreenState();
}

class _TaskFormScreenState extends State<TaskFormScreen> {
  final _formGlobalKey = GlobalKey<FormState>();
  final _titleInputController = TextEditingController();
  final _descriptionInputController = TextEditingController();
  final _dateInputController = TextEditingController();
  final _fromInputController = TextEditingController();
  final _toInputController = TextEditingController();

  @override
  void dispose() {
    _titleInputController.dispose();
    _descriptionInputController.dispose();
    _dateInputController.dispose();
    _fromInputController.dispose();
    _toInputController.dispose();
    super.dispose();
  }

  VoidCallback _clearInput(TextEditingController controller) {
    return () => controller.clear();
  }

  String? _validateTitle(String? title) {
    if (title == null || title.isEmpty) {
      return 'Title required';
    } else {
      return null;
    }
  }

  String? _validateFrom(String? from) {
    if (from == null || from.isEmpty) {
      return 'From time required';
    } else {
      return null;
    }
  }

  Task _prepareTask(BuildContext context) {
    final state = context.read<TaskFormScreenCubit>().state;
    final String title = _titleInputController.text;
    final String description = _descriptionInputController.text;
    final TaskLevel priority = state.priority;
    final TaskLevel complexity = state.complexity;
    final List<String> labels = state.labels;
    final DateTime date = state.date;
    final DateTime? from = state.includeTime ? state.from : null;
    DateTime? to;
    final bool remind = state.remind;

    if (state.includeTime) {
      if (_toInputController.text.isNotEmpty) {
        if (state.to.isAfter(state.from)) {
          to = state.to;
        }
      }
    }

    final task = Task(
      id: widget.taskToUpdate?.id,
      title: title,
      description: description.isEmpty ? null : description,
      priority: priority.toName,
      complexity: complexity.toName,
      labels: labels.isEmpty ? null : labels,
      date: date,
      from: from,
      to: to,
      remind: remind,
      done: false,
    );

    return task;
  }

  VoidCallback _addTask(BuildContext context) {
    return () {
      if (_formGlobalKey.currentState!.validate()) {
        final task = _prepareTask(context);
        context.read<TaskBloc>().add(AddTask(task));
      }
    };
  }

  VoidCallback _updateTask(BuildContext context) {
    return () {
      if (_formGlobalKey.currentState!.validate()) {
        final task = _prepareTask(context);
        context.read<TaskBloc>().add(ReplaceTask(task));
      }
    };
  }

  double _getLevelValue(String field) {
    if (field == TaskLevel.high.toName) {
      return TaskLevel.high.toValue;
    } else if (field == TaskLevel.medium.toName) {
      return TaskLevel.medium.toValue;
    } else if (field == TaskLevel.low.toName) {
      return TaskLevel.low.toValue;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskFormScreenCubit(),
      child: Builder(builder: (context) {
        if (widget.taskToUpdate != null) {
          final title = widget.taskToUpdate?.title;
          final description = widget.taskToUpdate?.description;
          final priority = widget.taskToUpdate?.priority;
          final complexity = widget.taskToUpdate?.complexity;
          final labels = widget.taskToUpdate?.labels;
          final date = widget.taskToUpdate?.date;
          final from = widget.taskToUpdate?.from;
          final to = widget.taskToUpdate?.to;
          final remind = widget.taskToUpdate?.remind;

          _titleInputController.text = title ?? '';
          _descriptionInputController.text = description ?? '';

          if (priority != null) {
            double value = _getLevelValue(priority);
            context.read<TaskFormScreenCubit>().setPriority(value);
          }

          if (complexity != null) {
            double value = _getLevelValue(complexity);
            context.read<TaskFormScreenCubit>().setComplexity(value);
          }

          if (labels != null) {
            context.read<TaskFormScreenCubit>().setLabels(labels);
          }

          if (date != null) {
            context.read<TaskFormScreenCubit>().setDate(date);
            String formattedDate = DateFormat('dd/MM/yyyy').format(date);
            _dateInputController.text = formattedDate;
          }

          if (from != null) {
            context.read<TaskFormScreenCubit>().setIncludeTime(true);
            context.read<TaskFormScreenCubit>().setFrom(from);
            String formattedTime = DateFormat('HH:mm').format(from.toLocal());
            _fromInputController.text = formattedTime;

            if (to != null) {
              context.read<TaskFormScreenCubit>().setTo(to);
              String formattedTime = DateFormat('HH:mm').format(to.toLocal());
              _toInputController.text = formattedTime;
            }
          }

          if (remind != null) {
            context.read<TaskFormScreenCubit>().setRemind(remind);
          }
        }

        return BlocListener<TaskBloc, TaskState>(
          listener: (context, state) {
            if (state.addTaskStatus.isSuccess) {
              context.pop();
            }

            if (state.replaceTaskStatus.isSuccess) {
              context.pop();
            }
          },
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Task'),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Form(
                  key: _formGlobalKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 10,
                              ),
                              child: TextFieldWidget(
                                textCapitalization:
                                    TextCapitalization.sentences,
                                controller: _titleInputController,
                                label: 'Title',
                                hint: 'Enter the title',
                                suffixIcon: IconButton(
                                  onPressed: _clearInput(_titleInputController),
                                  icon: const Icon(Icons.clear),
                                ),
                                validator: _validateTitle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 10,
                              ),
                              child: TextFieldWidget(
                                textCapitalization:
                                    TextCapitalization.sentences,
                                maxLines: 3,
                                keyboardType: TextInputType.multiline,
                                controller: _descriptionInputController,
                                label: 'Description',
                                hint: 'Enter the description',
                                suffixIcon: IconButton(
                                  onPressed:
                                      _clearInput(_descriptionInputController),
                                  icon: const Icon(Icons.clear),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 10,
                            ),
                            child: Text(
                              'Priority',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                              ),
                              child: BlocSelector<TaskFormScreenCubit,
                                  TaskFormScreenState, TaskLevel>(
                                selector: (state) => state.priority,
                                builder: (context, state) {
                                  return Slider(
                                    value: state.toValue,
                                    max: 100,
                                    onChanged: (value) => context
                                        .read<TaskFormScreenCubit>()
                                        .setPriority(value),
                                    divisions: 2,
                                    label: state.toName.capitalize(),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 10,
                            ),
                            child: Text(
                              'Complexity',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                              ),
                              child: BlocSelector<TaskFormScreenCubit,
                                  TaskFormScreenState, TaskLevel>(
                                selector: (state) => state.complexity,
                                builder: (context, state) {
                                  return Slider(
                                    value: state.toValue,
                                    max: 100,
                                    onChanged: (value) => context
                                        .read<TaskFormScreenCubit>()
                                        .setComplexity(value),
                                    divisions: 2,
                                    label: state.toName.capitalize(),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 10,
                            ),
                            child: Text(
                              'Labels',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BlocSelector<TaskFormScreenCubit,
                                TaskFormScreenState, List<String>>(
                              selector: (state) => state.labels,
                              builder: (context, state) {
                                return ChipInputWidget(
                                  chipLabels: state,
                                  hint: 'Enter a label',
                                  onAdded: (label) => context
                                      .read<TaskFormScreenCubit>()
                                      .addLabel(label),
                                  onDeleted: (index) => context
                                      .read<TaskFormScreenCubit>()
                                      .removeLabel(index),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 10,
                            ),
                            child: Text(
                              'Date',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 10,
                              ),
                              child: DateInputWidget(
                                controller: _dateInputController,
                                label: 'Date',
                                hint: 'Pick a date',
                                onPicked: (date) => context
                                    .read<TaskFormScreenCubit>()
                                    .setDate(date),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 10,
                              ),
                              child: Text(
                                'Include time',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 10,
                            ),
                            child: BlocSelector<TaskFormScreenCubit,
                                TaskFormScreenState, bool>(
                              selector: (state) => state.includeTime,
                              builder: (context, state) {
                                return Switch(
                                  activeColor: primaryColor,
                                  value: state,
                                  onChanged: (bool value) => context
                                      .read<TaskFormScreenCubit>()
                                      .setIncludeTime(value),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      BlocSelector<TaskFormScreenCubit, TaskFormScreenState,
                          bool>(
                        selector: (state) => state.includeTime,
                        builder: (context, state) {
                          return Column(
                            children: state
                                ? [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 32,
                                            vertical: 10,
                                          ),
                                          child: Text(
                                            'From',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 32,
                                              vertical: 10,
                                            ),
                                            child: TimeInputWidget(
                                              controller: _fromInputController,
                                              label: 'From',
                                              hint: 'Set from',
                                              onPicked: (time) => context
                                                  .read<TaskFormScreenCubit>()
                                                  .setFrom(time),
                                              validator: _validateFrom,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 32,
                                            vertical: 10,
                                          ),
                                          child: Text(
                                            'To',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 32,
                                              vertical: 10,
                                            ),
                                            child: TimeInputWidget(
                                              controller: _toInputController,
                                              label: 'To',
                                              hint: 'Set to',
                                              onPicked: (time) => context
                                                  .read<TaskFormScreenCubit>()
                                                  .setTo(time),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]
                                : [],
                          );
                        },
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 10,
                              ),
                              child: Text(
                                'Remind',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 10,
                            ),
                            child: BlocSelector<TaskFormScreenCubit,
                                TaskFormScreenState, bool>(
                              selector: (state) => state.remind,
                              builder: (context, state) {
                                return Switch(
                                  activeColor: primaryColor,
                                  value: state,
                                  onChanged: (bool value) => context
                                      .read<TaskFormScreenCubit>()
                                      .setRemind(value),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 10,
                              ),
                              child: (widget.taskToUpdate == null)
                                  ? BlocSelector<TaskBloc, TaskState, Status>(
                                      selector: (state) => state.addTaskStatus,
                                      builder: (context, state) {
                                        return FilledButtonWidget(
                                          onPressed: state.isLoading
                                              ? null
                                              : _addTask(context),
                                          child: state.isLoading
                                              ? const SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(whiteColor),
                                                  ),
                                                )
                                              : const Text('Add task'),
                                        );
                                      },
                                    )
                                  : BlocSelector<TaskBloc, TaskState, Status>(
                                      selector: (state) =>
                                          state.replaceTaskStatus,
                                      builder: (context, state) {
                                        return FilledButtonWidget(
                                          onPressed: state.isLoading
                                              ? null
                                              : _updateTask(context),
                                          child: state.isLoading
                                              ? const SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(whiteColor),
                                                  ),
                                                )
                                              : const Text('Update task'),
                                        );
                                      },
                                    ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
