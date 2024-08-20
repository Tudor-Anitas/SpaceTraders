import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/pages/ships/ship_details/arrival_status.dart';

class ShipNameColumn extends StatefulWidget {
  final Ship ship;
  const ShipNameColumn({super.key, required this.ship});

  @override
  State<ShipNameColumn> createState() => _ShipNameColumnState();
}

class _ShipNameColumnState extends State<ShipNameColumn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.ship.symbol,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: AppColors.cardBackground),
          ),
          Text(
            widget.ship.nav.waypointSymbol,
            style: const TextStyle(color: AppColors.cardBackground),
          ),
          PhosphorIcon(
            PhosphorIcons.caretDoubleDown(),
            color: AppColors.cardBackground,
            size: 12,
          ),
          Text(widget.ship.nav.route.destination.symbol,
              style: const TextStyle(color: AppColors.cardBackground)),
          const SizedBox(
            height: Spacing.large * 1.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: Spacing.small,
                  ),
                  PhosphorIcon(
                    PhosphorIcons.mapPin(),
                    color: AppColors.white,
                    size: 18,
                  )
                ],
              ),
              Row(
                children: [
                  PhosphorIcon(
                    PhosphorIcons.mapPin(),
                    color: AppColors.valid,
                    size: 18,
                  ),
                  const SizedBox(width: Spacing.small),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: Spacing.medium,
              ),
              ShipArrivalStatus(
                  shipSymbol: widget.ship.symbol, route: widget.ship.nav.route),
              const SizedBox(
                width: Spacing.medium,
              ),
            ],
          )
        ],
      ),
    );
  }
}
