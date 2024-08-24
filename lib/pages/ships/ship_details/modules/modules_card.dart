import 'package:flutter/material.dart';
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
    return const Placeholder();
  }
}
