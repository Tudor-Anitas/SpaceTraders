import 'package:flutter/material.dart';

class RowDistinction extends StatelessWidget {
  final Widget child;
  final Color? color;
  const RowDistinction({super.key, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).focusColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
