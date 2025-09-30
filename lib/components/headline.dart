import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String title;
  const Headline({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.minPositive,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(1, 1),
            blurRadius: 4,
            color: Colors.black.withValues(alpha: 0.5))
      ]),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontSize: 36,
            shadows: const [
              Shadow(offset: Offset(1, 1), blurRadius: 4, color: Colors.amber)
            ],
          ),
        ),
      ),
    );
  }
}
