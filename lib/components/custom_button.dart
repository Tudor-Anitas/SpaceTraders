import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      style: Theme.of(context).filledButtonTheme.style,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
