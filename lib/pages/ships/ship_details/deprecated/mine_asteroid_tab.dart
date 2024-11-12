import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/blocs/ships/ships_cubit.dart';
import 'package:space_traders/components/bottom_sheet.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/sizes.dart';
@deprecated
class MineAsteroidTab extends StatefulWidget {
  final String shipSymbol;
  const MineAsteroidTab({super.key, required this.shipSymbol});

  @override
  State<MineAsteroidTab> createState() => _MineAsteroidTabState();
}

class _MineAsteroidTabState extends State<MineAsteroidTab> {
  int nrOfExtractions = 1;

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Column(
        children: [
          Text(
            'Extraction options',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          const Text('how many extractions?'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Expanded(flex: 1, child: SizedBox()),
              Expanded(
                flex: 8,
                child: Slider(
                  min: 1,
                  max: 50,
                  value: nrOfExtractions.toDouble(),
                  onChanged: (newValue) => setState(() {
                    nrOfExtractions = newValue.toInt();
                  }),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  nrOfExtractions.toString(),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          const SizedBox(
            height: Spacing.medium,
          ),
          CustomButton(
            onPressed: () {
              context
                  .read<ShipsCubit>()
                  .mineAsteroid(widget.shipSymbol, nrOfExtractions);

              context.pop();
            },
            text: 'Mine',
          )
        ],
      ),
    );
  }
}
