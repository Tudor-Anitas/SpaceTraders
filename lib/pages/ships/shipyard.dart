import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/bottom_sheet.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/shipyard_methods.dart';
import 'package:space_traders/models/shipyard.dart';
import 'package:space_traders/pages/ships/shipyard_details.dart';

class ShipYardPage extends StatefulWidget {
  const ShipYardPage({super.key});

  @override
  State<ShipYardPage> createState() => _ShipYardPageState();
}

class _ShipYardPageState extends State<ShipYardPage> {
  var localShipyardsFuture = Future(() => []);
  var detailsFuture = Future<Shipyard>(() => Shipyard.fromMap(const {}));
  String systemSymbol = '';
  String waypointSymbol = '';

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Column(
        children: [
          Text(
            'Get nearest shipyard from:',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          SizedBox(
            height: kToolbarHeight,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var symbol in getSystemsFromShips(
                    context.watch<HomeCubit>().state.ships))
                  CustomButton(
                    onPressed: () {
                      localShipyardsFuture =
                          context.read<HomeCubit>().findLocalShipyard(symbol);
                      systemSymbol = symbol;
                      setState(() {});
                    },
                    text: symbol,
                  )
              ],
            ),
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          FutureBuilder(
            future: localShipyardsFuture,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                  height: kToolbarHeight,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var localWaypointSymbol in snapshot.data!)
                        Row(
                          children: [
                            CustomButton(
                              onPressed: () {
                                detailsFuture = context
                                    .read<HomeCubit>()
                                    .getShipyard(
                                        systemSymbol, localWaypointSymbol);
                                waypointSymbol = localWaypointSymbol;
                                setState(() {});
                              },
                              text: 'Shipyard\n$localWaypointSymbol',
                            ),
                            const SizedBox(
                              width: Spacing.medium,
                            )
                          ],
                        ),
                    ],
                  ),
                );
              }
              return const SizedBox();
            },
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          FutureBuilder(
            future: detailsFuture,
            builder: (context, snapshot) {
              return ShipyardDetails(
                snapshot: snapshot,
                waypointSymbol: waypointSymbol,
              );
            },
          )
        ],
      ),
    );
  }
}
