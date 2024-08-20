import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/pages/ships/ship_details/frame_details/ship_elements_status/element_status.dart';

class ShipElementsStatus extends StatefulWidget {
  final Ship ship;
  const ShipElementsStatus({super.key, required this.ship});

  @override
  State<ShipElementsStatus> createState() => _ShipElementsStatusState();
}

class _ShipElementsStatusState extends State<ShipElementsStatus> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElementStatus(
                title: 'Fuel',
                color: AppColors.valid,
                icon: PhosphorIcons.gasCan(),
                currentValue: widget.ship.fuel.current,
                maxValue: widget.ship.fuel.capacity,
              ),
              ElementStatus(
                title: 'Cargo',
                color: Theme.of(context).colorScheme.primary,
                icon: PhosphorIcons.cube(),
                currentValue: widget.ship.cargo.inventory.length,
                maxValue: widget.ship.cargo.capacity,
              ),
            ],
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElementStatus(
                title: 'Modules',
                color: Theme.of(context).colorScheme.primary,
                icon: PhosphorIcons.lego(),
                currentValue: widget.ship.modules.length,
                maxValue: widget.ship.modules.length,
              ),
              ElementStatus(
                title: 'Condition',
                color: AppColors.error,
                icon: PhosphorIcons.wrench(),
                currentValue: (widget.ship.frame.condition * 100 +
                        widget.ship.frame.integrity * 100)
                    .toInt(),
                maxValue: 200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
