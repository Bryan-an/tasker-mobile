import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/themes/export.dart';

class ShortTaskCardWidget extends StatelessWidget {
  final Task task;
  final _dateFormat = DateFormat('HH:mm');

  ShortTaskCardWidget({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = AppTheme.of(context) == AppThemes.lightTheme;
    final title = task.title;
    final description = task.description;
    final from = task.from?.toLocal();
    final to = task.to?.toLocal();

    return Material(
      elevation: 2,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 250),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isLightTheme ? whiteColor : primaryColor.withOpacity(0.2),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  if (from != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.watch_later,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(_dateFormat.format(from)),
                          if (to != null) Text(' - ${_dateFormat.format(to)}'),
                        ],
                      ),
                    ),
                ],
              ),
            if (description != null) const SizedBox(height: 8),
            if (description != null) Text(description),
          ],
        ),
      ),
    );
  }
}
