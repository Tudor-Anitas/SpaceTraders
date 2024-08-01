import 'package:flutter/material.dart';
import 'package:space_traders/components/row_distinction.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/mount.dart';

class MountsDetails extends StatelessWidget {
  final List<Mount> mounts;
  const MountsDetails({super.key, required this.mounts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: List.generate(
          mounts.length,
          (index) => Column(
            children: [
              Text(mounts[index].name),
              RowDistinction(
                child: MountDetails(
                  mount: mounts[index],
                ),
              ),
              const SizedBox(
                height: Spacing.small,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MountDetails extends StatelessWidget {
  final Mount mount;
  const MountDetails({super.key, required this.mount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            Flexible(child: Text(mount.description)),
          ],
        ),
        const SizedBox(
          height: Spacing.medium,
        ),
        Row(
          children: [const Text('Strength: '), Text(mount.strength.toString())],
        ),
        const Row(
          children: [
            Text('Deposits: '),
          ],
        ),
        Row(
          children: [
            const Expanded(flex: 5, child: SizedBox()),
            Expanded(
              flex: 95,
              child: Column(
                children: List.generate(
                  mount.deposits.length,
                  (index) => Text(
                    mount.deposits[index],
                  ),
                ),
              ),
            )
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
                      Text(mount.requirements.power.toString())
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Crew: '),
                      Text(mount.requirements.crew.toString())
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Slots: '),
                      Text(mount.requirements.slots.toString())
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
