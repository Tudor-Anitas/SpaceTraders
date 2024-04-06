import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/square_buttons.dart';

class ShipActions extends StatelessWidget {
  final String systemSymbol;
  const ShipActions({super.key, required this.systemSymbol});

  @override
  Widget build(BuildContext context) {
    var actions = {
      'Find asteroids': () =>
          context.read<HomeCubit>().findAsteroids(systemSymbol)
    };

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        itemCount: actions.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return SquareButton(
            onPressed: actions.entries.elementAt(index).value,
            text: actions.entries.elementAt(index).key,
          );
        },
      ),
    );
  }
}
