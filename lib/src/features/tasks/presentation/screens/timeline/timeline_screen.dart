import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:tasker_mobile/src/common_widgets/export.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/themes/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen>
    with SingleTickerProviderStateMixin {
  late List<Tab> _tabs;
  late TabController _tabController;
  late Map<TaskDay, DateTime> _weekdays;

  @override
  void initState() {
    super.initState();
    _weekdays = getCurrentWeekdays();

    _tabs = TaskDay.values
        .map((day) => Tab(
              height: 64,
              child: DateTabWidget(day: day, time: _weekdays[day]!),
            ))
        .toList();

    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.colorScheme.primary;
    final appColors = AppColors.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: primary,
        drawer: const DrawerNavigator(),
        body: NestedScrollView(
          headerSliverBuilder: (context, value) => <Widget>[
            SliverAppBar(
              backgroundColor: primary,
              foregroundColor: whiteColor,
              centerTitle: true,
              title: const Text(
                'Timeline',
              ),
              pinned: true,
              floating: true,
              snap: true,
              expandedHeight: 128,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.only(top: 64, left: 4, right: 4),
                  child: Material(
                    color: primary,
                    child: TabBar(
                      labelColor: appColors.tabLabel,
                      unselectedLabelColor: whiteColor,
                      indicator:
                          DateIndicator(color: theme.scaffoldBackgroundColor),
                      controller: _tabController,
                      tabs: _tabs,
                    ),
                  ),
                ),
              ),
            ),
          ],
          body: BlocSelector<TaskBloc, TaskState, List<Task>>(
            selector: (state) => state.tasks,
            builder: (context, tasks) {
              return TabBarView(
                controller: _tabController,
                children: _tabs.map((Tab tab) {
                  final currentTime = (tab.child as DateTabWidget).time;
                  int colorIndex = -1;

                  final currentTasks = tasks.where((task) {
                    final taskDay = task.date != null
                        ? DateFormat('dd').format(task.date!.toLocal())
                        : null;
                    final currentDay =
                        DateFormat('dd').format(currentTime.toLocal());

                    return taskDay == currentDay && !task.done!;
                  }).toList();

                  final tasksByFrom = clasifyTasksByFromTime(currentTasks);

                  return Container(
                    padding: const EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                      ),
                      color: theme.scaffoldBackgroundColor,
                    ),
                    child: tasksByFrom.isEmpty
                        ? const EmptyWidget(
                            title: 'No tasks',
                            text: 'No tasks for this day',
                          )
                        : Table(
                            defaultColumnWidth: const IntrinsicColumnWidth(),
                            children: tasksByFrom.keys.map<TableRow>((time) {
                              final tasksByTime = tasksByFrom[time];
                              colorIndex++;

                              if (colorIndex == appColors.palette.length) {
                                colorIndex = 0;
                              }

                              return TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment:
                                        TableCellVerticalAlignment.fill,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: TimeIntervalWidget(
                                        color: appColors.palette[colorIndex],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Text(DateFormat.Hm()
                                          .format(time.toLocal())),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                        vertical: 4.0,
                                      ),
                                      child: Column(
                                        children: [
                                          if (tasksByTime != null)
                                            for (final task in tasksByTime)
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 4.0),
                                                child: ShortTaskCardWidget(
                                                    task: task),
                                              ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}
