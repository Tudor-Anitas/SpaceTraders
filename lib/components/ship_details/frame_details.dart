import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/frame.dart';

class FrameDetails extends StatelessWidget {
  final Frame frame;
  const FrameDetails({super.key, required this.frame});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [const Text('Symbol: '), Text(frame.symbol)],
        ),
        Row(
          children: [const Text('Name: '), Text(frame.name)],
        ),
        const Row(
          children: [
            Text('Description: '),
          ],
        ),
        const SizedBox(
          height: Spacing.small,
        ),
        Row(
          children: [
            Flexible(child: Text(frame.description)),
          ],
        ),
        const SizedBox(
          height: Spacing.small,
        ),
        Row(
          children: [
            const Text('Condition: '),
            Text(frame.condition.toString())
          ],
        ),
        Row(
          children: [
            const Text('Integrity: '),
            Text(frame.integrity.toString())
          ],
        ),
        Row(
          children: [
            const Text('Module slots: '),
            Text(frame.moduleSlots.toString())
          ],
        ),
        Row(
          children: [
            const Text('Mounting points: '),
            Text(frame.mountingPoints.toString())
          ],
        ),
        Row(
          children: [
            const Text('Fuel capacity: '),
            Text(frame.fuelCapacity.toString())
          ],
        ),
        const Row(
          children: [
            Text('Requirements: '),
          ],
        ),
        Row(
          children: [
            const Expanded(flex: 5, child: SizedBox()),
            Expanded(
                flex: 95,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('- Power: '),
                        Text(frame.requirements.power.toString())
                      ],
                    ),
                    Row(
                      children: [
                        const Text('- Crew: '),
                        Text(frame.requirements.crew.toString())
                      ],
                    ),
                    Row(
                      children: [
                        const Text('- Slots: '),
                        Text(frame.requirements.slots.toString())
                      ],
                    ),
                  ],
                )),
          ],
        )
      ],
    );
  }
}
