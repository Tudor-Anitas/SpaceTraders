import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';

class MountsCard extends StatefulWidget {
  final Ship ship;
  final bool isActive;
  const MountsCard({super.key, required this.ship, required this.isActive});

  @override
  State<MountsCard> createState() => _MountsCardState();
}

class _MountsCardState extends State<MountsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.small),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: widget.isActive
            ? Theme.of(context).colorScheme.surfaceContainer
            : Theme.of(context).colorScheme.surfaceBright,
      ),
      child: Column(
        children: List.generate(
          widget.ship.mounts.length,
          (index) => Container(
            padding: const EdgeInsets.all(Spacing.small),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.secondary),
              child: Row(
                children: [
                  Expanded(
                    flex: 80,
                    child: Container(
                      padding: const EdgeInsets.all(Spacing.small),
                      color: Theme.of(context).colorScheme.onSecondary,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.ship.mounts.elementAt(index).name,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            widget.ship.mounts.elementAt(index).description,
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PhosphorIcon(
                              PhosphorIcons.lightning(),
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            Text(
                              widget.ship.mounts
                                  .elementAt(index)
                                  .requirements
                                  .power
                                  .toString(),
                              style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PhosphorIcon(
                              PhosphorIcons.usersThree(),
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            Text(
                              widget.ship.mounts
                                  .elementAt(index)
                                  .requirements
                                  .crew
                                  .toString(),
                              style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PhosphorIcon(
                              PhosphorIcons.treeStructure(),
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            Text(
                              widget.ship.mounts
                                  .elementAt(index)
                                  .requirements
                                  .slots
                                  .toString(),
                              style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
