import 'package:flutter/material.dart';

class RowDistinction extends StatelessWidget {
  final Widget child;
  final Color? color;
  const RowDistinction({super.key, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Theme.of(context).canvasColor,
      child: child,
    );
  }
}
