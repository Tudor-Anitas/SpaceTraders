import 'package:flutter/material.dart';
import 'package:space_traders/models/registrations.dart';

class RegistractionDetails extends StatelessWidget {
  final Registration reg;
  const RegistractionDetails({super.key, required this.reg});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [const Text('Name: '), Text(reg.name)],
        ),
        Row(
          children: [const Text('Faction symbol: '), Text(reg.factionSymbol)],
        ),
        Row(
          children: [const Text('role: '), Text(reg.role)],
        ),
      ],
    );
  }
}
