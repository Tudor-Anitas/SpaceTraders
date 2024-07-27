import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String? text;
  final Icon? icon;
  const CustomButton(
      {super.key, required this.onPressed, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      style: Theme.of(context).filledButtonTheme.style,
      onPressed: onPressed,
      child: text != null ? Text(text!, textAlign: TextAlign.center,) : icon,
    );
  }
}
