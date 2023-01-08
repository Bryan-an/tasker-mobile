import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/constants/colors.dart';

class ChipInputWidget extends StatelessWidget {
  final List<String> chipLabels;
  final String? hint;
  final TextInputType? keyboardType;
  final void Function(int) onDeleted;
  final void Function(String) onAdded;

  final _inputController = TextEditingController();

  ChipInputWidget({
    super.key,
    required this.chipLabels,
    this.hint,
    this.keyboardType,
    required this.onDeleted,
    required this.onAdded,
  });

  @override
  Widget build(BuildContext context) {
    int colorIndex = -1;

    return SizedBox(
      height: 60,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 32.0,
          vertical: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: chipLabels.length + 1,
        itemBuilder: (context, index) {
          colorIndex++;

          if (colorIndex == chipColors.length) {
            colorIndex = 0;
          }

          if (index == chipLabels.length) {
            return Chip(
              label: SizedBox(
                width: 100,
                child: TextFormField(
                  style: const TextStyle(
                    color: whiteColor,
                  ),
                  keyboardType: keyboardType,
                  controller: _inputController,
                  decoration: InputDecoration.collapsed(
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: whiteColor,
                      ),
                    ),
                    hintText: hint,
                    hintStyle: TextStyle(
                      color: whiteColor.withOpacity(0.8),
                    ),
                  ),
                ),
              ),
              backgroundColor: chipColors[colorIndex],
              onDeleted: () {
                final label = _inputController.text;

                if (label.isNotEmpty) {
                  onAdded(label);
                }
              },
              deleteIcon: const Icon(Icons.add_circle),
              deleteIconColor: whiteColor,
            );
          }

          final chipLabel = chipLabels[index];

          return Chip(
            label: Text(
              chipLabel,
              style: const TextStyle(
                color: whiteColor,
              ),
            ),
            backgroundColor: chipColors[colorIndex],
            onDeleted: () => onDeleted(index),
            deleteIconColor: whiteColor,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 4,
        ),
      ),
    );
  }
}
