import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/frame.dart';
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
    print('screen width: $screenWidth');
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('System'),
                  CustomCard(
                    width: screenWidth * 0.2,
                    padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.xs, vertical: Spacing.xs),
                    child: Text(
                      widget.ship.nav.systemSymbol,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )
                ],
              ),
              Text(
                widget.ship.symbol,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Column(
                children: [
                  const Text('Waypoint'),
                  CustomCard(
                    width: screenWidth * 0.2,
                    padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.medium, vertical: Spacing.xs),
                    child: Text(
                      widget.ship.nav.waypointSymbol.split('-').last,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCard(
                color: Theme.of(context).colorScheme.primary,
                padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.small, vertical: Spacing.xs),
                child: Text(
                  widget.ship.nav.status.splitMapJoin(
                    '_',
                    onMatch: (s) => ' ',
                    onNonMatch: (s) => s,
                  ),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.ship.nav.route.origin.symbol,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                  PhosphorIcon(
                    PhosphorIcons.caretDoubleDown(),
                    size: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    widget.ship.nav.route.departure.symbol.isEmpty
                        ? widget.ship.nav.route.origin.symbol
                        : widget.ship.nav.route.departure.symbol,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  )
                ],
              ),
              CustomCard(
                color: Theme.of(context).colorScheme.primary,
                padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.small, vertical: Spacing.xs),
                child: Text(
                  widget.ship.nav.flightMode,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
