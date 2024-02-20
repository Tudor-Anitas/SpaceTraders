import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/sizes.dart';

class LocalShipyards extends StatefulWidget {
  final Future future;
  final String systemSymbol;
  final Function(Future) detailsFuture;
  const LocalShipyards(
      {super.key,
      required this.future,
      required this.systemSymbol,
      required this.detailsFuture});

  @override
  State<LocalShipyards> createState() => _LocalShipyardsState();
}

class _LocalShipyardsState extends State<LocalShipyards> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.future,
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
                        onPressed: () {
                          context
                              .read<HomeCubit>()
                              .getShipyard(widget.systemSymbol, waypointSymbol);
                        },
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
    );
  }
}
