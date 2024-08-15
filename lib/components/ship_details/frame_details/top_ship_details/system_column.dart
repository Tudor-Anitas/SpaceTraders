import 'package:flutter/material.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/ship.dart';

class SystemColumn extends StatefulWidget {
  final Ship ship;
  const SystemColumn({super.key, required this.ship});

  @override
  State<SystemColumn> createState() => _SystemColumnState();
}

class _SystemColumnState extends State<SystemColumn> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    const space = SizedBox(height: Spacing.small);
    return CustomCard(
      padding: const EdgeInsets.all(Spacing.small),
      color: Theme.of(context).colorScheme.secondary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'System',
                  style: TextStyle(color: AppColors.cardBackground),
                ),
                space,
                CustomCard(
                    width: (screenWidth - 4 * Spacing.small) * .25,
                    padding:
                        const EdgeInsets.symmetric(vertical: Spacing.small),
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    child: Text(widget.ship.nav.systemSymbol)),
                space,
                CustomCard(
                  width: (screenWidth - 4 * Spacing.small) * .25,
                  padding: const EdgeInsets.symmetric(vertical: Spacing.small),
                  color: Theme.of(context).colorScheme.primary,
                  child: Text(
                    widget.ship.nav.status,
                    style: const TextStyle(color: AppColors.cardBackground),
                  ),
                ),
                space,
                const Text(
                  'Departed',
                  style: TextStyle(color: AppColors.cardBackground),
                ),
                Text(
                  formatYearDate(
                      DateTime.parse(widget.ship.nav.route.departureTime)),
                  style: const TextStyle(color: AppColors.cardBackground),
                ),
                Text(
                  formatHourDate(DateTime.parse(widget.ship.nav.route.arrival)),
                  style: const TextStyle(color: AppColors.cardBackground),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
