import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/blocs/ships/ships_cubit.dart';
import 'package:space_traders/components/bottom_sheet.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/sizes.dart';

class FindAsteroidsTab extends StatefulWidget {
  final String systemSymbol;
  final String shipSymbol;
  const FindAsteroidsTab(
      {super.key, required this.systemSymbol, required this.shipSymbol});

  @override
  State<FindAsteroidsTab> createState() => _FindAsteroidsTabState();
}

class _FindAsteroidsTabState extends State<FindAsteroidsTab> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Column(
        children: [
          Text(
            'Flying to ...',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          FutureBuilder(
            future:
                context.read<ShipsCubit>().findAsteroids(widget.systemSymbol),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                  height: kToolbarHeight,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var localAsteroid in snapshot.data!)
                        Row(
                          children: [
                            CustomButton(
                              onPressed: () async {
                                var statusCode = await context
                                    .read<ShipsCubit>()
                                    .orbit(widget.shipSymbol);
                                if (statusCode == 200 && context.mounted) {
                                  await context.read<ShipsCubit>().navigateShip(
                                      context,
                                      widget.shipSymbol,
                                      localAsteroid.symbol);
                                  if (context.mounted) {
                                    Navigator.pop(context); 
                                  }
                                }
                              },
                              text: localAsteroid.symbol,
                            ),
                            const SizedBox(
                              width: Spacing.medium,
                            )
                          ],
                        )
                    ],
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
