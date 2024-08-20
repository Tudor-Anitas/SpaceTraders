import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';

class ShipTypeRequirements extends StatefulWidget {
  final Ship ship;
  const ShipTypeRequirements({super.key, required this.ship});

  @override
  State<ShipTypeRequirements> createState() => _ShipTypeRequirementsState();
}

class _ShipTypeRequirementsState extends State<ShipTypeRequirements> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return CustomCard(
      color: Theme.of(context).colorScheme.secondary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: (screenWidth - 4 * Spacing.medium) * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.ship.frame.name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: AppColors.cardBackground),
                ),
                const SizedBox(height: Spacing.small),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.ship.frame.description,
                        style: const TextStyle(color: AppColors.cardBackground),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomCard(
              width: (screenWidth - 4 * Spacing.medium) * 0.5,
              padding: const EdgeInsets.all(Spacing.small),
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Requirements',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: Spacing.medium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Power'),
                      Row(
                        children: [
                          PhosphorIcon(
                            PhosphorIcons.lightning(),
                            size: 12,
                          ),
                          Text(widget.ship.reactor.powerOutput.toString())
                        ],
                      )
                    ],
                  ),
                  const SizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Crew'),
                      Row(
                        children: [
                          PhosphorIcon(
                            PhosphorIcons.usersThree(),
                            size: 12,
                          ),
                          Text(widget.ship.crew.current.toString())
                        ],
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
