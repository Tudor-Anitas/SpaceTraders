import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/progress_bar.dart';
import 'package:space_traders/components/ship_details_components/component_integrity.dart';
import 'package:space_traders/components/ship_details_components/requirement_row.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';

class ReactorDetails extends StatelessWidget {
  final Ship ship;
  const ReactorDetails({super.key, required this.ship});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          ship.reactor.name,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
        const SizedBox(
          height: Spacing.medium,
        ),
        CustomCard(
          color: Theme.of(context).colorScheme.surfaceContainer,
          child: Text(ship.reactor.description),
        ),
        const SizedBox(
          height: Spacing.medium,
        ),
        CustomCard(
          color: Theme.of(context).colorScheme.secondary,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              Expanded(
                flex: 80,
                child: Container(
                  padding: const EdgeInsets.all(Spacing.small),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(Corners.normal),
                    ),
                  ),
                  child: Column(
                    children: [
                      ComponentIntegrity(
                          icon: PhosphorIcons.wrench(),
                          color: AppColors.error,
                          currentValue: ship.reactor.condition * 100,
                          maxValue: 100,
                          text: 'Condition'),
                      const SizedBox(
                        height: Spacing.small,
                      ),
                      ComponentIntegrity(
                        icon: PhosphorIcons.wrench(),
                        color: AppColors.integrity,
                        currentValue: ship.reactor.integrity * 100,
                        maxValue: 100,
                        text: 'Integrity',
                      ),
                      const SizedBox(
                        height: Spacing.small,
                      ),
                      ComponentIntegrity(
                        showBar: false,
                        icon: PhosphorIcons.lightning(),
                        color: AppColors.power,
                        currentValue: ship.reactor.powerOutput,
                        maxValue: 100,
                        text: 'Power output',
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: Column(
                  children: [
                    RequirementRow(
                      icon: PhosphorIcons.lightning(),
                      value: ship.reactor.requirements.power,
                    ),
                    RequirementRow(
                      icon: PhosphorIcons.usersThree(),
                      value: ship.reactor.requirements.crew,
                    ),
                    RequirementRow(
                      icon: PhosphorIcons.treeStructure(),
                      value: ship.reactor.requirements.slots,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
