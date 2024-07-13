import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/reactor.dart';

class ReactorDetails extends StatelessWidget {
  final Reactor reactor;
  const ReactorDetails({super.key, required this.reactor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [const Text('Symbol: '), Text(reactor.symbol)],
        ),
        Row(
          children: [const Text('Name: '), Text(reactor.name)],
        ),
        const Row(
          children: [
            Text('Description: '),
          ],
        ),
        const SizedBox(
          height: Spacing.medium,
        ),
        Row(
          children: [
            Flexible(child: Text(reactor.description)),
          ],
        ),
        const SizedBox(
          height: Spacing.medium,
        ),
        Row(
          children: [
            const Text('Condition: '),
            Text(reactor.condition.toString())
          ],
        ),
        Row(
          children: [
            const Text('Integrity: '),
            Text(reactor.integrity.toString())
          ],
        ),
        Row(
          children: [
            const Text('Power output: '),
            Text(reactor.powerOutput.toString())
          ],
        ),
        const Row(
          children: [Text('Requirements: ')],
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
                      const Text('Power: '),
                      Text(reactor.requirements.power.toString())
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Crew: '),
                      Text(reactor.requirements.crew.toString())
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Slots: '),
                      Text(reactor.requirements.slots.toString())
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
