import 'package:flutter/material.dart';

class DisplayRow extends StatelessWidget {
  final String title;
  final String value;
  const DisplayRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title), Flexible(child: Text(value))],
    );
  }
}
