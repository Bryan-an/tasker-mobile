import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/themes/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

import 'cubit/filter_screen_cubit.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final _formGlobalKey = GlobalKey<FormState>();
  List<TaskLevel> levels = TaskLevel.values;
  List<TaskOrder> orders = TaskOrder.values;
  List<TaskDone> doneValues = TaskDone.values;
  List<TaskReminder> remindValues = TaskReminder.values;
  TaskLevel? _priority;
  TaskLevel? _complexity;
  TaskOrder _order = TaskOrder.descending;
  TaskDone? _done;
  TaskReminder? _remind;
  final List<String> _labels = [];
  late ScrollController _scrollController;
  final GlobalKey _taskListKey = GlobalKey();

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  VoidCallback _search(BuildContext context) {
    return () {
      context.read<FilterScreenCubit>().searchTasks(
            priority: _priority,
            complexity: _complexity,
            labels: _labels.isEmpty ? null : _labels,
            order: _order,
            done: _done,
            remind: _remind,
          );
    };
  }

  @override
  Widget build(BuildContext context) {
    final isLightTheme = AppTheme.of(context) == AppThemes.lightTheme;

    return BlocProvider(
      create: (context) => FilterScreenCubit(
        taskRepository: context.read<TaskRepository>(),
      )..searchTasks(),
      child: Builder(
        builder: (context) {
          return BlocListener<FilterScreenCubit, FilterScreenState>(
            listener: (context, state) {
              if (state.searchStatus.isSuccess) {
                Scrollable.ensureVisible(_taskListKey.currentContext!);
              }
            },
            child: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Filter'),
                  centerTitle: true,
                ),
                drawer: const DrawerNavigator(),
                body: SingleChildScrollView(
                  controller: _scrollController,
                  child: Form(
                    key: _formGlobalKey,
                    child: Column(
                      children: [
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
                                  vertical: 10,
                                ),
                                child: Wrap(
                                  spacing: 8,
                                  children: <InputChip>[
                                    for (final level in levels)
                                      InputChip(
                                        label: Text(
                                          level.toName.capitalize(),
                                          style: TextStyle(
                                            color: _priority == level
                                                ? whiteColor
                                                : null,
                                          ),
                                        ),
                                        selected: _priority == level,
                                        onSelected: (bool selected) {
                                          setState(() {
                                            if (_priority == level) {
                                              _priority = null;
                                            } else {
                                              _priority = level;
                                            }
                                          });
                                        },
                                        backgroundColor: isLightTheme
                                            ? highlightColor
                                            : primaryDarkColor.withOpacity(0.3),
                                        selectedColor: isLightTheme
                                            ? primaryColor
                                            : primaryDarkColor,
                                        checkmarkColor: whiteColor,
                                      ),
                                  ],
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
                                  vertical: 10,
                                ),
                                child: Wrap(
                                  spacing: 8,
                                  children: <InputChip>[
                                    for (final level in levels)
                                      InputChip(
                                        label: Text(
                                          level.toName.capitalize(),
                                          style: TextStyle(
                                            color: _complexity == level
                                                ? whiteColor
                                                : null,
                                          ),
                                        ),
                                        selected: _complexity == level,
                                        onSelected: (bool selected) {
                                          setState(() {
                                            if (_complexity == level) {
                                              _complexity = null;
                                            } else {
                                              _complexity = level;
                                            }
                                          });
                                        },
                                        backgroundColor: isLightTheme
                                            ? highlightColor
                                            : primaryDarkColor.withOpacity(0.3),
                                        selectedColor: isLightTheme
                                            ? primaryColor
                                            : primaryDarkColor,
                                        checkmarkColor: whiteColor,
                                      ),
                                  ],
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
                                'State',
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
                                child: Wrap(
                                  spacing: 8,
                                  children: <InputChip>[
                                    for (final value in doneValues)
                                      InputChip(
                                        label: Text(
                                          value.toName.capitalize(),
                                          style: TextStyle(
                                            color: _done == value
                                                ? whiteColor
                                                : null,
                                          ),
                                        ),
                                        selected: _done == value,
                                        onSelected: (bool selected) {
                                          setState(() {
                                            if (_done == value) {
                                              _done = null;
                                            } else {
                                              _done = value;
                                            }
                                          });
                                        },
                                        backgroundColor: isLightTheme
                                            ? highlightColor
                                            : primaryDarkColor.withOpacity(0.3),
                                        selectedColor: isLightTheme
                                            ? primaryColor
                                            : primaryDarkColor,
                                        checkmarkColor: whiteColor,
                                      ),
                                  ],
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
                                'Reminder',
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
                                child: Wrap(
                                  spacing: 8,
                                  children: <InputChip>[
                                    for (final value in remindValues)
                                      InputChip(
                                        label: Text(
                                          value.toName.capitalize(),
                                          style: TextStyle(
                                            color: _remind == value
                                                ? whiteColor
                                                : null,
                                          ),
                                        ),
                                        selected: _remind == value,
                                        onSelected: (bool selected) {
                                          setState(() {
                                            if (_remind == value) {
                                              _remind = null;
                                            } else {
                                              _remind = value;
                                            }
                                          });
                                        },
                                        backgroundColor: isLightTheme
                                            ? highlightColor
                                            : primaryDarkColor.withOpacity(0.3),
                                        selectedColor: isLightTheme
                                            ? primaryColor
                                            : primaryDarkColor,
                                        checkmarkColor: whiteColor,
                                      ),
                                  ],
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
                              child: ChipInputWidget(
                                chipLabels: _labels,
                                hint: 'Enter a label',
                                onAdded: (label) {
                                  setState(() {
                                    _labels.add(label);
                                  });
                                },
                                onDeleted: (index) {
                                  setState(() {
                                    _labels.removeAt(index);
                                  });
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
                                'Time Order',
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
                                child: Wrap(
                                  spacing: 8,
                                  children: <InputChip>[
                                    for (final order in orders)
                                      InputChip(
                                        label: Text(
                                          order.toName.capitalize(),
                                          style: TextStyle(
                                            color: _order == order
                                                ? whiteColor
                                                : null,
                                          ),
                                        ),
                                        selected: _order == order,
                                        onSelected: (bool selected) {
                                          setState(() {
                                            if (_order != order) {
                                              _order = order;
                                            }
                                          });
                                        },
                                        backgroundColor: isLightTheme
                                            ? highlightColor
                                            : primaryDarkColor.withOpacity(0.3),
                                        selectedColor: isLightTheme
                                            ? primaryColor
                                            : primaryDarkColor,
                                        checkmarkColor: whiteColor,
                                      ),
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
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 32,
                                  vertical: 10,
                                ),
                                child: BlocSelector<FilterScreenCubit,
                                    FilterScreenState, Status>(
                                  selector: (state) => state.searchStatus,
                                  builder: (context, state) {
                                    return FilledButtonWidget(
                                      onPressed: state.isLoading
                                          ? null
                                          : _search(context),
                                      child: state.isLoading
                                          ? const SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(whiteColor),
                                              ),
                                            )
                                          : const Text('Search'),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        BlocSelector<FilterScreenCubit, FilterScreenState,
                            List<Task>>(
                          selector: (state) => state.tasks,
                          builder: (context, state) {
                            return ListView.separated(
                              key: _taskListKey,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: const EdgeInsets.only(
                                top: 16,
                                right: 16,
                                left: 16,
                                bottom: 32,
                              ),
                              itemBuilder: (context, index) {
                                return TaskCardWidget(
                                  task: state[index],
                                  isEditable: false,
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 8),
                              itemCount: state.length,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
