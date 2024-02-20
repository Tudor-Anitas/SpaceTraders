import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/curves.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/methods/shipyard_methods.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/shipyard.dart';

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
    var screenHeight = MediaQuery.of(context).size.height;
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(Spacing.medium),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Theme.of(context).cardColor),
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
                          localShipyardsFuture = context
                              .read<HomeCubit>()
                              .findLocalShipyard(symbol);
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
                  return AnimatedSize(
                    duration: 500.ms,
                    curve: CustomCurves.defaultCurve,
                    child: snapshot.hasData
                        ? CustomCard(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ship types',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          decoration: TextDecoration.underline),
                                ),
                                SizedBox(
                                  height: screenHeight * .3,
                                  child: ListView.builder(
                                    itemCount: snapshot.data!.shipTypes.length,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(snapshot.data!.shipTypes[index]),
                                          Row(
                                            children: [
                                              Text(snapshot.data!.ships != null
                                                  ? snapshot.data!.ships![index]
                                                      .purchasePrice
                                                      .toString()
                                                  : 'no price'),
                                              IconButton(
                                                onPressed: () async =>
                                                    await context
                                                        .read<HomeCubit>()
                                                        .purchaseShip(
                                                            snapshot
                                                                .data!
                                                                .shipTypes[
                                                                    index]
                                                                .convertToShipType,
                                                            waypointSymbol),
                                                icon: const Icon(Icons.add),
                                              )
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        : const SizedBox(
                            width: double.infinity,
                          ),
                  );
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
