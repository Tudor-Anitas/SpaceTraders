import 'package:flutter/material.dart';
import 'package:space_traders/app_colors.dart';

class CustomProgressBar extends StatelessWidget {
  final int currentValue;
  final int maxValue;
  const CustomProgressBar(
      {super.key, required this.currentValue, required this.maxValue});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LinearProgressIndicator(
        value: convertedProgress(maxValue, currentValue),
        backgroundColor: Colors.white,
        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.valid),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

double convertedProgress(int max, int current) {
  return ((current * 100) / max) / 100;
}
