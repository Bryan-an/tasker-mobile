import 'package:flutter/material.dart';
import 'package:tasker_mobile/src/constants/export.dart';

class TimeIntervalWidget extends StatelessWidget {
  final Color color;

  const TimeIntervalWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.zero,
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Container(
                height: 4,
                width: 4,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 4,
              padding: EdgeInsets.zero,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
