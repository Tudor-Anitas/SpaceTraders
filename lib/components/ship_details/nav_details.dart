import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/components/progress_bar.dart';
import 'package:space_traders/components/row_distinction.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';

class NavDetails extends StatelessWidget {
  final Ship ship;
  const NavDetails({super.key, required this.ship});

  @override
  Widget build(BuildContext context) {
   

    return Container(
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(Spacing.medium),
      decoration: BoxDecoration(
          color: Theme.of(context).focusColor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('System'),
                  RowDistinction(
                    child: Text(
                      ship.nav.systemSymbol,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  const Text('Waypoint'),
                  RowDistinction(
                    child: Text(
                      ship.nav.waypointSymbol,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  SizedBox(
                    width: Spacing.medium,
                  ),
                  Text('Route'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(ship.nav.route.origin.symbol,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                  PhosphorIcon(
                    PhosphorIcons.caretDoubleRight(),
                    size: 20,
                  ),
                  Text(ship.nav.route.destination.symbol,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary))
                ],
              )
            ],
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          Row(
            children: [
              RowDistinction(child: Text(ship.nav.status)),
              const SizedBox(
                width: Spacing.medium,
              ),
              RowDistinction(child: Text(ship.nav.flightMode)),
            ],
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          Column(
            children: [
              Row(
                children: [
                  RowDistinction(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Crew'),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width -
                                Spacing.large * 2) *
                            0.5,
                        child: Row(
                          children: [
                            CustomProgressBar(
                                currentValue: ship.crew.current,
                                maxValue: ship.crew.capacity),
                            const SizedBox(
                              width: Spacing.small,
                            ),
                            Text('${ship.crew.current}/${ship.crew.capacity}')
                          ],
                        ),
                      )
                    ],
                  )),
                ],
              ),
            ],
          )
        ],
      ),
      // child: Column(
      //   children: [
      //     Row(
      //       children: [
      //         const Text('System symbol: '),
      //         Text(shipNav.systemSymbol)
      //       ],
      //     ),
      //     spacing,
      //     Row(
      //       children: [
      //         const Text('Waypoint symbol: '),
      //         Text(shipNav.waypointSymbol)
      //       ],
      //     ),
      //     spacing,
      //     const Row(
      //       children: [
      //         Text('Route: '),
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         const Row(
      //           children: [
      //             Expanded(flex: 5, child: SizedBox()),
      //             Expanded(flex: 95, child: Text(' - Destination: ')),
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('symbol: '),
      //                   Text(shipNav.route.destination.symbol)
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('type: '),
      //                   Text(shipNav.route.destination.type)
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('system symbol: '),
      //                   Text(shipNav.route.destination.systemSymbol)
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('x: '),
      //                   Text(shipNav.route.destination.x.toString())
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('y: '),
      //                   Text(shipNav.route.destination.y.toString())
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         const Row(
      //           children: [
      //             Expanded(flex: 5, child: SizedBox()),
      //             Expanded(flex: 95, child: Text(' - Origin: ')),
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('symbol: '),
      //                   Text(shipNav.route.origin.symbol)
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('type: '),
      //                   Text(shipNav.route.origin.type)
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('system symbol: '),
      //                   Text(shipNav.route.origin.systemSymbol)
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('x: '),
      //                   Text(shipNav.route.origin.x.toString())
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             const Expanded(flex: 20, child: SizedBox()),
      //             Expanded(
      //               flex: 80,
      //               child: Row(
      //                 children: [
      //                   const Text('y: '),
      //                   Text(shipNav.route.origin.y.toString())
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         const Expanded(flex: 5, child: SizedBox()),
      //         Expanded(
      //           flex: 95,
      //           child: Row(
      //             children: [const Text(' - Departure time: '), spacing],
      //           ),
      //         ),
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         const Expanded(flex: 20, child: SizedBox()),
      //         Expanded(
      //           flex: 80,
      //           child: Row(
      //             children: [
      //               Text(formatDate(
      //                   DateTime.parse(shipNav.route.departureTime))),
      //               spacing
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         const Expanded(flex: 5, child: SizedBox()),
      //         Expanded(
      //           flex: 95,
      //           child: Row(
      //             children: [const Text(' - Arrival: '), spacing],
      //           ),
      //         ),
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         const Expanded(flex: 20, child: SizedBox()),
      //         Expanded(
      //           flex: 80,
      //           child: Row(
      //             children: [
      //               Text(formatDate(DateTime.parse(shipNav.route.arrival))),
      //               spacing
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //     spacing,
      //     Row(
      //       children: [const Text('Status: '), Text(shipNav.status)],
      //     ),
      //     spacing,
      //     Row(
      //       children: [const Text('Flight mode: '), Text(shipNav.flightMode)],
      //     ),
      //   ],
      // ),
    );
  }
}
