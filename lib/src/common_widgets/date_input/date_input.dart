import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasker_mobile/src/constants/export.dart';

class DateInputWidget extends StatefulWidget {
  final String? label;
  final String? hint;
  final void Function(DateTime) onPicked;

  const DateInputWidget({
    super.key,
    this.label,
    this.hint,
    required this.onPicked,
  });

  @override
  State<DateInputWidget> createState() => _DateInputWidgetState();
}

class _DateInputWidgetState extends State<DateInputWidget> {
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
          prefixIcon: const Icon(Icons.calendar_month),
          floatingLabelStyle: const TextStyle(
            color: secondaryColor,
          ),
        ),
        onTap: () async {
          final now = DateTime.now();

          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: now,
            firstDate: now,
            lastDate: DateTime(now.year + 1, now.month, now.day),
          );

          if (pickedDate == null && controller.text.isNotEmpty) {
            return;
          }

          String formattedDate =
              DateFormat('dd/MM/yyyy').format(pickedDate ?? now);

          setState(() {
            controller.text = formattedDate;
          });

          widget.onPicked(pickedDate ?? now);
        },
      ),
    );
  }
}
