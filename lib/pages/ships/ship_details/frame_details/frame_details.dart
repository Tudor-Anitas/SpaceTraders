import 'package:flutter/material.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/pages/ships/ship_details/frame_details/ship_elements_status/ship_elements_status.dart';
import 'package:space_traders/pages/ships/ship_details/frame_details/top_ship_details/name_column.dart';
import 'package:space_traders/pages/ships/ship_details/frame_details/top_ship_details/system_column.dart';
import 'package:space_traders/pages/ships/ship_details/frame_details/top_ship_details/waypoint_column.dart';
import 'package:space_traders/pages/ships/ship_details/frame_details/type_requirements/type_requirements.dart';

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
    return SingleChildScrollView(
      child: SizedBox(
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
                  ShipNameColumn(ship: widget.ship),
                  WaypointColumn(ship: widget.ship),
                ],
              ),
            ),
            const SizedBox(
              height: Spacing.medium,
            ),
            ShipTypeRequirements(ship: widget.ship),
            const SizedBox(
              height: Spacing.medium,
            ),
            ShipElementsStatus(ship: widget.ship)
          ],
        ),
      ),
    );
  }
}
