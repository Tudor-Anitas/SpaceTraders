import 'package:flutter/material.dart';
import 'package:space_traders/app_colors.dart';

class CustomProgressBar extends StatelessWidget {
  final int currentValue;
  final int maxValue;
  final Color? color;
  const CustomProgressBar(
      {super.key,
      required this.currentValue,
      required this.maxValue,
      this.color});

  @override
  Widget build(BuildContext context) {
    return maxValue > 0
        ? Expanded(
            child: LinearProgressIndicator(
              value: convertedProgress(maxValue, currentValue),
              backgroundColor: Colors.white,
              valueColor: color != null
                  ? AlwaysStoppedAnimation<Color>(color!)
                  : const AlwaysStoppedAnimation<Color>(AppColors.valid),
              borderRadius: BorderRadius.circular(20),
            ),
          )
        : const SizedBox();
  }
}

double convertedProgress(int max, int current) {
  return ((current * 100) / max) / 100;
}
