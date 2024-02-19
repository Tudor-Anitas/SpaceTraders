import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/shipyard_methods.dart';

class ShipYardPage extends StatefulWidget {
  const ShipYardPage({super.key});

  @override
  State<ShipYardPage> createState() => _ShipYardPageState();
}

class _ShipYardPageState extends State<ShipYardPage> {
  var future = Future(() => []);
  String systemSymbol = '';

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const Text('Get nearest shipyard from:'),
          SizedBox(
            height: kToolbarHeight,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var symbol in getSystemsFromShips(
                    context.watch<HomeCubit>().state.ships))
                  CustomButton(
                    onPressed: () {
                      future =
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
            future: future,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                  height: kToolbarHeight,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var waypointSymbol in snapshot.data!)
                        Row(
                          children: [
                            CustomButton(
                              onPressed: () => context
                                  .read<HomeCubit>()
                                  .getShipyard(systemSymbol, waypointSymbol),
                              text: 'Shipyard\n$waypointSymbol',
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
          )
        ],
      ),
    );
  }
}
