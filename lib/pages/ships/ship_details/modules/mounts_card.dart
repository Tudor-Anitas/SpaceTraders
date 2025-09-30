import 'package:flutter/material.dart';
import 'package:space_traders/components/ship_details_components/requirements_panel.dart';
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
      height: MediaQuery.of(context).size.height * 0.6,
      padding: const EdgeInsets.all(Spacing.small),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.surfaceContainer),
      child: SingleChildScrollView(
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
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(Corners.normal)),
                            color: Theme.of(context).colorScheme.onSecondary),
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
                        child: RequirementsPanel(
                            requirements:
                                content.elementAt(index).requirements))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum MountModuleCard { mounts, modules }
