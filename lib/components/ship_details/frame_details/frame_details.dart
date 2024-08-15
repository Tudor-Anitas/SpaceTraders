import 'package:flutter/material.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/ship_details/frame_details/top_ship_details/system_column.dart';
import 'package:space_traders/components/ship_details/frame_details/top_ship_details/waypoint_column.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/ship.dart';

class FrameDetails extends StatefulWidget {
  final Ship ship;
  const FrameDetails({super.key, required this.ship});

  @override
  State<FrameDetails> createState() => _FrameDetailsState();
}

class _FrameDetailsState extends State<FrameDetails> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    debugPrint('screen width: $screenWidth');
    var space = const SizedBox(height: Spacing.small);
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          CustomCard(
            padding: const EdgeInsets.all(Spacing.small),
            color: Theme.of(context).colorScheme.secondary,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SystemColumn(ship: widget.ship),
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      Text(widget.ship.nav.route.destination.symbol,
                          style:
                              const TextStyle(color: AppColors.cardBackground))
                    ],
                  ),
                ),
                WaypointColumn(ship: widget.ship),
              ],
            ),
          )
        ],
      ),
    );
  }
}
