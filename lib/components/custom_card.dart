import 'package:flutter/material.dart';

import 'package:space_traders/components/sizes.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double? height;
  final double? width;
  final Color? color;
  const CustomCard(
      {super.key,
      required this.child,
      this.padding,
      this.height,
      this.width,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding ?? const EdgeInsets.all(Spacing.medium),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color ?? Theme.of(context).highlightColor),
      child: Center(child: child),
    );
  }
}
