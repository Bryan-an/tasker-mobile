import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

import 'cubit/task_form_screen_cubit.dart';

class TaskFormScreen extends StatelessWidget {
  final _formGlobalKey = GlobalKey<FormState>();
  final _titleInputController = TextEditingController();
  final _descriptionInputController = TextEditingController();
  final _testLabels = List<String>.generate(2, (int index) => 'label $index');

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

  @override
  Widget build(BuildContext context) {
    int colorIndex = -1;

    return BlocProvider(
      create: (context) => TaskFormScreenCubit(),
      child: Builder(builder: (context) {
        return SafeArea(
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
                          child: SizedBox(
                            height: 50,
                            child: ListView.separated(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32.0,
                                vertical: 10,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemCount: _testLabels.length + 1,
                              itemBuilder: (context, index) {
                                colorIndex++;

                                if (colorIndex == chipColors.length) {
                                  colorIndex = 0;
                                }

                                if (index == _testLabels.length) {
                                  return Chip(
                                    label: const Text(
                                      'test',
                                      style: TextStyle(
                                        color: whiteColor,
                                      ),
                                    ),
                                    backgroundColor: chipColors[colorIndex],
                                    onDeleted: () => print('delete'),
                                    deleteIconColor: whiteColor,
                                  );
                                }

                                final label = _testLabels[index];

                                return Chip(
                                  label: Text(
                                    label,
                                    style: const TextStyle(
                                      color: whiteColor,
                                    ),
                                  ),
                                  backgroundColor: chipColors[colorIndex],
                                  onDeleted: () => print('delete'),
                                  deleteIconColor: whiteColor,
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
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
