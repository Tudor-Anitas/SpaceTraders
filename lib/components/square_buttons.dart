import 'package:flutter/material.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/sizes.dart';

class SquareButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const SquareButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.all(Spacing.medium),
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: AppColors.cardBackground,
              ),
        ),
      ),
    );
  }
}
