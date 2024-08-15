import 'package:flutter/material.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/ship.dart';

class WaypointColumn extends StatefulWidget {
  final Ship ship;
  const WaypointColumn({super.key, required this.ship});

  @override
  State<WaypointColumn> createState() => _WaypointColumnState();
}

class _WaypointColumnState extends State<WaypointColumn> {
  @override
  Widget build(BuildContext context) {
    var space = const SizedBox(
      height: Spacing.small,
    );
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          const Text(
            'Waypoint',
            style: TextStyle(color: AppColors.cardBackground),
          ),
          space,
          CustomCard(
            padding: const EdgeInsets.symmetric(vertical: Spacing.small),
            color: Theme.of(context).colorScheme.secondaryContainer,
            child: Text(widget.ship.nav.waypointSymbol.split('-').last),
          ),
          space,
          CustomCard(
            padding: const EdgeInsets.symmetric(vertical: Spacing.small),
            color: Theme.of(context).colorScheme.primary,
            child: Text(
              widget.ship.nav.flightMode,
              style: const TextStyle(color: AppColors.cardBackground),
            ),
          ),
          space,
          const Text(
            'Arrived',
            style: TextStyle(color: AppColors.cardBackground),
          ),
          Text(
            formatYearDate(DateTime.parse(widget.ship.nav.route.arrival)),
            style: const TextStyle(color: AppColors.cardBackground),
          ),
          Text(
            formatHourDate(DateTime.parse(widget.ship.nav.route.arrival)),
            style: const TextStyle(color: AppColors.cardBackground),
          ),
        ],
      ),
    );
  }
}
