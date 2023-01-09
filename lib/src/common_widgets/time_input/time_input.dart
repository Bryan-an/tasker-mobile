import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasker_mobile/src/constants/export.dart';

class TimeInputWidget extends StatefulWidget {
  final String? label;
  final String? hint;
  final void Function(DateTime) onPicked;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const TimeInputWidget({
    super.key,
    this.label,
    this.hint,
    required this.onPicked,
    required this.controller,
    this.validator,
  });

  @override
  State<TimeInputWidget> createState() => _TimeInputWidgetState();
}

class _TimeInputWidgetState extends State<TimeInputWidget> {
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(
        seedColor: secondaryColor,
        primary: isError ? Theme.of(context).errorColor : secondaryColor,
      )),
      child: TextFormField(
        controller: widget.controller,
        readOnly: true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.label,
          hintText: widget.hint,
          prefixIcon: const Icon(Icons.access_time),
          floatingLabelStyle: TextStyle(
            color: isError ? Theme.of(context).errorColor : secondaryColor,
          ),
        ),
        validator: (widget.validator != null)
            ? (text) {
                String? error = widget.validator!(text);

                if (error == null) {
                  setState(() {
                    isError = false;
                  });
                } else {
                  setState(() {
                    isError = true;
                  });
                }

                return error;
              }
            : null,
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
            widget.controller.text = formattedTime;
          });

          widget.onPicked(time);
        },
      ),
    );
  }
}
