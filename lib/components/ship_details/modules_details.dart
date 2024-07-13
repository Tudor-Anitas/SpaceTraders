import 'package:flutter/material.dart';
import 'package:space_traders/components/row_distinction.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/module.dart';

class ModulesDetails extends StatelessWidget {
  final List<Module> modules;
  const ModulesDetails({super.key, required this.modules});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        modules.length,
        (index) {
          return Column(
            children: [
              Text('Module: ${modules[index].name}'),
              RowDistinction(
                child: ModuleDetails(
                  module: modules[index],
                ),
              ),
              const SizedBox(
                height: Spacing.small,
              )
            ],
          );
        },
      ),
    );
  }
}

class ModuleDetails extends StatelessWidget {
  final Module module;
  const ModuleDetails({super.key, required this.module});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Capacity: '),
            Text(module.capacity.toString())
          ],
        ),
        Row(
          children: [const Text('Range: '), Text(module.range.toString())],
        ),
        Row(
          children: [const Text('Name: '), Text(module.name)],
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
            Flexible(child: Text(module.description)),
          ],
        ),
        const SizedBox(
          height: Spacing.medium,
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
                      Text(module.requirements.power.toString())
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Crew: '),
                      Text(module.requirements.crew.toString())
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Slots: '),
                      Text(module.requirements.slots.toString())
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
