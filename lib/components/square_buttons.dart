import 'package:flutter/material.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/sizes.dart';

class SquareButton extends StatelessWidget {
  final Function() onPressed;
  final String? text;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  const SquareButton(
      {super.key,
      required this.onPressed,
      this.text,
      this.height,
      this.width,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 70,
      width: width ?? 70,
      margin: margin ?? const EdgeInsets.all(Spacing.medium),
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text ?? '',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: AppColors.cardBackground,
              ),
        ),
      ),
    );
  }
}
