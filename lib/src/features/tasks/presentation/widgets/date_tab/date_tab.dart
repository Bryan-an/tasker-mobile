import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasker_mobile/src/constants/export.dart';

class DateTabWidget extends StatelessWidget {
  final TaskDay day;
  final DateTime time;

  const DateTabWidget({super.key, required this.day, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Text(day.toShorName),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
          ),
          child: Text(
            DateFormat('dd').format(time.toLocal()),
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
