import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/ship_details_components/requirement_row.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/requirements.dart';

/// Combines 3 **RequirementRow** to make a side panel
/// to show requirements for different components of the ship
///
/// Tapping on the panel will show a dialog screen with details
/// about each icon
class RequirementsPanel extends StatelessWidget {
  final Requirements requirements;
  const RequirementsPanel({super.key, required this.requirements});

  @override
  Widget build(BuildContext context) {
    int leftFlex = 30;
    int rightFlex = 70;

    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomCard(
                width: MediaQuery.sizeOf(context).width * 0.8,
                color: Theme.of(context).colorScheme.secondary,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: leftFlex,
                          child: RequirementRow(
                            icon: PhosphorIcons.lightning(),
                            value: requirements.power,
                          ),
                        ),
                        Expanded(
                          flex: rightFlex,
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'power required for installation on a ship',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: Spacing.small,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: leftFlex,
                          child: RequirementRow(
                            icon: PhosphorIcons.usersThree(),
                            value: requirements.crew,
                          ),
                        ),
                        Expanded(
                          flex: rightFlex,
                          child: Text(
                            'Number of crew needed for installation',
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Spacing.small,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: leftFlex,
                          child: RequirementRow(
                            icon: PhosphorIcons.treeStructure(),
                            value: requirements.slots,
                          ),
                        ),
                        Expanded(
                          flex: rightFlex,
                          child: Text(
                            'Number of module slots required for installation',
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      child: Column(
        children: [
          RequirementRow(
            icon: PhosphorIcons.lightning(),
            value: requirements.power,
          ),
          RequirementRow(
            icon: PhosphorIcons.usersThree(),
            value: requirements.crew,
          ),
          RequirementRow(
            icon: PhosphorIcons.treeStructure(),
            value: requirements.slots,
          ),
        ],
      ),
    );
  }
}
