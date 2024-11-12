import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

/// Used in the ship details pages, showing the needed requirements
/// to run the ship, engine, reactor, etc.
class RequirementRow extends StatelessWidget {
  final IconData icon;
  final int value;
  const RequirementRow({super.key, required this.icon, required this.value});

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PhosphorIcon(
          icon,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        Text(
          value.toString(),
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        ),
      ],
    );
  }
}
