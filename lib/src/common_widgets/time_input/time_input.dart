import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasker_mobile/src/constants/export.dart';

class TimeInputWidget extends StatefulWidget {
  final String? label;
  final String? hint;
  final void Function(DateTime) onPicked;

  const TimeInputWidget({
    super.key,
    this.label,
    this.hint,
    required this.onPicked,
  });

  @override
  State<TimeInputWidget> createState() => _TimeInputWidgetState();
}

class _TimeInputWidgetState extends State<TimeInputWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(
        seedColor: secondaryColor,
        primary: secondaryColor,
      )),
      child: TextFormField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.label,
          hintText: widget.hint,
          prefixIcon: const Icon(Icons.access_time),
          floatingLabelStyle: const TextStyle(
            color: secondaryColor,
          ),
        ),
        onTap: () async {
          final now = DateTime.now();

          TimeOfDay? pickedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          );

          if (pickedTime == null) {
            return;
          }

          final time = DateTime(
            now.year,
            now.month,
            now.day,
            pickedTime.hour,
            pickedTime.minute,
          );

          String formattedTime = DateFormat('HH:mm').format(time);

          setState(() {
            controller.text = formattedTime;
          });

          widget.onPicked(time);
        },
      ),
    );
  }
}
