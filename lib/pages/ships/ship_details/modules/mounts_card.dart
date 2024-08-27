import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';

class MountsModulesCard extends StatefulWidget {
  final Ship ship;
  final MountModuleCard type;
  final bool isActive;
  const MountsModulesCard(
      {super.key,
      required this.ship,
      required this.isActive,
      required this.type});

  @override
  State<MountsModulesCard> createState() => _MountsModulesCardState();
}

class _MountsModulesCardState extends State<MountsModulesCard> {
  @override
  Widget build(BuildContext context) {
    var ship = widget.ship;
    dynamic content =
        widget.type == MountModuleCard.modules ? ship.modules : ship.mounts;

    return Container(
      padding: const EdgeInsets.all(Spacing.small),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.surfaceContainer),
      child: Column(
        children: List.generate(
          content.length,
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
                            content.elementAt(index).name,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            content.elementAt(index).description,
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
                              content
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
                              content
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
                              content
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

enum MountModuleCard { mounts, modules }
