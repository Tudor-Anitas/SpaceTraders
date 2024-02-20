import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/asset_strings.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/curves.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/shipyard.dart';


class ShipyardDetails extends StatefulWidget {
  final AsyncSnapshot<Shipyard> snapshot;
  final String waypointSymbol;
  const ShipyardDetails(
      {super.key, required this.snapshot, required this.waypointSymbol});

  @override
  State<ShipyardDetails> createState() => _ShipyardDetailsState();
}

class _ShipyardDetailsState extends State<ShipyardDetails> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return AnimatedSize(
      duration: 500.ms,
      curve: CustomCurves.defaultCurve,
      child: widget.snapshot.hasData
          ? CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ship types',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(decoration: TextDecoration.underline),
                      ),
                      Text(
                          'Credits: ${context.watch<HomeCubit>().state.agent.credits} G')
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * .3,
                    child: ListView.builder(
                      itemCount: widget.snapshot.data!.shipTypes.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Image.asset(
                                    getShipImage(
                                        widget.snapshot.data!.shipTypes[index]),
                                    fit: BoxFit.fill,
                                    height: 30,
                                    width: 30,
                                  ),
                                  Expanded(
                                    child: Text(
                                      widget.snapshot.data!.shipTypes[index]
                                          .splitMapJoin(
                                            '_',
                                            onMatch: (p0) => ' ',
                                          )
                                          .substring(4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(widget.snapshot.data!.ships != null
                                      ? widget.snapshot.data!.ships![index]
                                          .purchasePrice
                                          .toString()
                                      : 'no price'),
                                  IconButton(
                                    onPressed: () async => await context
                                        .read<HomeCubit>()
                                        .purchaseShip(
                                            widget
                                                .snapshot
                                                .data!
                                                .shipTypes[index]
                                                .convertToShipType,
                                            widget.waypointSymbol),
                                    icon: const Icon(Icons.add),
                                  )
                                ],
                              ),
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
  }
}
