import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/blocs/ships/ships_cubit.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/ship.dart';

class SystemColumn extends StatefulWidget {
  final String shipSymbol;
  const SystemColumn({super.key, required this.shipSymbol});

  @override
  State<SystemColumn> createState() => _SystemColumnState();
}

class _SystemColumnState extends State<SystemColumn> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    const space = SizedBox(height: Spacing.small);
    Ship ship = context.watch<ShipsCubit>().state.ships.firstWhere(
          (element) => element.symbol == widget.shipSymbol,
        );
    return Expanded(
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
              padding: const EdgeInsets.symmetric(vertical: Spacing.small),
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: Text(ship.nav.systemSymbol)),
          space,
          CustomCard(
            width: (screenWidth - 4 * Spacing.small) * .25,
            padding: const EdgeInsets.symmetric(vertical: Spacing.small),
            color: Theme.of(context).colorScheme.primary,
            child: Text(
              ship.nav.status.split('_').join(' '),
              style: const TextStyle(color: AppColors.cardBackground),
            ),
          ),
          space,
          const Text(
            'Departed',
            style: TextStyle(color: AppColors.cardBackground),
          ),
          Text(
            formatYearDate(DateTime.parse(ship.nav.route.departureTime)),
            style: const TextStyle(color: AppColors.cardBackground),
          ),
          Text(
            formatHourDate(DateTime.parse(ship.nav.route.departureTime)),
            style: const TextStyle(color: AppColors.cardBackground),
          )
        ],
      ),
    );
  }
}
