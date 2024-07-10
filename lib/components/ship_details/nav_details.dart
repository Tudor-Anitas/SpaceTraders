import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/ship_nav.dart';

class NavDetails extends StatelessWidget {
  final ShipNav shipNav;
  const NavDetails({super.key, required this.shipNav});

  @override
  Widget build(BuildContext context) {
    var spacing = const SizedBox(
      height: Spacing.small,
    );

    return Column(
      children: [
        Row(
          children: [const Text('System symbol: '), Text(shipNav.systemSymbol)],
        ),
        spacing,
        Row(
          children: [
            const Text('Waypoint symbol: '),
            Text(shipNav.waypointSymbol)
          ],
        ),
        spacing,
        const Row(
          children: [
            Text('Route: '),
          ],
        ),
        Column(
          children: [
            const Row(
              children: [
                Expanded(flex: 5, child: SizedBox()),
                Expanded(flex: 95, child: Text(' - Destination: ')),
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('symbol: '),
                      Text(shipNav.route.destination.symbol)
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('type: '),
                      Text(shipNav.route.destination.type)
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('system symbol: '),
                      Text(shipNav.route.destination.systemSymbol)
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('x: '),
                      Text(shipNav.route.destination.x.toString())
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('y: '),
                      Text(shipNav.route.destination.y.toString())
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        Column(
          children: [
            const Row(
              children: [
                Expanded(flex: 5, child: SizedBox()),
                Expanded(flex: 95, child: Text(' - Origin: ')),
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('symbol: '),
                      Text(shipNav.route.origin.symbol)
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('type: '),
                      Text(shipNav.route.origin.type)
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('system symbol: '),
                      Text(shipNav.route.origin.systemSymbol)
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('x: '),
                      Text(shipNav.route.origin.x.toString())
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 20, child: SizedBox()),
                Expanded(
                  flex: 80,
                  child: Row(
                    children: [
                      const Text('y: '),
                      Text(shipNav.route.origin.y.toString())
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            const Expanded(flex: 5, child: SizedBox()),
            Expanded(
              flex: 95,
              child: Row(
                children: [const Text(' - Departure time: '), spacing],
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Expanded(flex: 20, child: SizedBox()),
            Expanded(
              flex: 80,
              child: Row(
                children: [
                  Text(formatDate(DateTime.parse(shipNav.route.departureTime))),
                  spacing
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Expanded(flex: 5, child: SizedBox()),
            Expanded(
              flex: 95,
              child: Row(
                children: [const Text(' - Arrival: '), spacing],
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Expanded(flex: 20, child: SizedBox()),
            Expanded(
              flex: 80,
              child: Row(
                children: [
                  Text(formatDate(DateTime.parse(shipNav.route.arrival))),
                  spacing
                ],
              ),
            ),
          ],
        ),
        spacing,
        Row(
          children: [const Text('Status: '), Text(shipNav.status)],
        ),
        spacing,
        Row(
          children: [const Text('Flight mode: '), Text(shipNav.flightMode)],
        ),
      ],
    );
  }
}
