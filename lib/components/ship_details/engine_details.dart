import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/engine.dart';

class EngineDetails extends StatelessWidget {
  final Engine engine;
  const EngineDetails({super.key, required this.engine});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [const Text('Symbol: '), Text(engine.symbol)],
          ),
          Row(
            children: [const Text('Name: '), Text(engine.name)],
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
              Flexible(child: Text(engine.description)),
            ],
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          Row(
            children: [
              const Text('Condition: '),
              Text(engine.condition.toString())
            ],
          ),
          Row(
            children: [
              const Text('Integrity: '),
              Text(engine.integrity.toString())
            ],
          ),
          Row(
            children: [const Text('Speed: '), Text(engine.speed.toString())],
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
                        Text(engine.requirements.power.toString())
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Crew: '),
                        Text(engine.requirements.crew.toString())
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Slots: '),
                        Text(engine.requirements.slots.toString())
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
