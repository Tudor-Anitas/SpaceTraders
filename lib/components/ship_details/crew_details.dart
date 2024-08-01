import 'package:flutter/material.dart';
import 'package:space_traders/models/crew.dart';

class CrewDetails extends StatelessWidget {
  final Crew crew;
  const CrewDetails({super.key, required this.crew});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [const Text('Current: '), Text(crew.current.toString())],
          ),
          Row(
            children: [
              const Text('Required: '),
              Text(crew.requiredCrew.toString())
            ],
          ),
          Row(
            children: [
              const Text('Capacity: '),
              Text(crew.capacity.toString())
            ],
          ),
          Row(
            children: [const Text('Rotation: '), Text(crew.rotation)],
          ),
          Row(
            children: [const Text('Morale: '), Text(crew.morale.toString())],
          ),
          Row(
            children: [const Text('Wage: '), Text(crew.wages.toString())],
          ),
        ],
      ),
    );
  }
}
