import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/sizes.dart';

class SquareButton extends StatelessWidget {
  final Function() onPressed;
  final String? text;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final IconData? icon;
  const SquareButton(
      {super.key,
      required this.onPressed,
      this.text,
      this.height,
      this.width,
      this.margin,
      this.icon});

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
            padding: icon != null
                ? EdgeInsets.zero
                : Theme.of(context).buttonTheme.padding),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                PhosphorIcon(
                  icon!,
                  size: 20,
                ),
              if (text != null)
                Text(
                  text!,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: AppColors.cardBackground,
                      ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
