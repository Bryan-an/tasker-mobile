import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

import 'cubit/task_form_screen_cubit.dart';

class TaskFormScreen extends StatelessWidget {
  final _formGlobalKey = GlobalKey<FormState>();
  final _titleInputController = TextEditingController();
  final _descriptionInputController = TextEditingController();

  TaskFormScreen({super.key});

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

  VoidCallback _addTask(BuildContext context) {
    return () {
      if (_formGlobalKey.currentState!.validate()) {
        final state = context.read<TaskFormScreenCubit>().state;

        final String title = _titleInputController.text;
        final String description = _descriptionInputController.text;
        final TaskLevel priority = state.priority;
        final TaskLevel complexity = state.complexity;
        final List<String> labels = state.labels;
        final DateTime date = state.date;
        final DateTime? from = state.includeTime ? state.from : null;
        final DateTime? to = state.includeTime ? state.to : null;
        final bool remind = state.remind;

        final task = Task(
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

        context.read<TaskBloc>().add(AddTask(task));
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskFormScreenCubit(),
      child: Builder(builder: (context) {
        return BlocListener<TaskBloc, TaskState>(
          listener: (context, state) {
            if (state.addTaskStatus.isSuccess) {
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
                                              label: 'From',
                                              hint: 'Set from',
                                              onPicked: (time) => context
                                                  .read<TaskFormScreenCubit>()
                                                  .setFrom(time),
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
                              child: BlocSelector<TaskBloc, TaskState, Status>(
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
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                      whiteColor),
                                            ),
                                          )
                                        : const Text('Add task'),
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
