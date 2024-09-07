import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';

class ModulesCard extends StatefulWidget {
  final Ship ship;
  final bool isActive;
  const ModulesCard({super.key, required this.ship, required this.isActive});

  @override
  State<ModulesCard> createState() => _ModulesCardState();
}

class _ModulesCardState extends State<ModulesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.small),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: widget.isActive
              ? Theme.of(context).colorScheme.surfaceContainer
              : Theme.of(context).colorScheme.surfaceBright),
      child: Column(
        children: List.generate(
          widget.ship.mounts.length,
          (index) => Container(
            padding: const EdgeInsets.all(Spacing.small),
          ),
        ),
      ),
    );
  }
}
