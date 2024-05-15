// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/square_buttons.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/pages/ships/ship_details/find_asteroids.dart';

class ShipActions extends StatefulWidget {
  final String systemSymbol;
  final String shipSymbol;
  const ShipActions(
      {super.key, required this.systemSymbol, required this.shipSymbol});

  @override
  State<ShipActions> createState() => _ShipActionsState();
}

class _ShipActionsState extends State<ShipActions> {
  bool stopReload = false;
  int remainingSeconds = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    //! SA TI FUT FAMILIA DE METODA
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeCubit>().listShips();
      if (mounted) {
        remainingSeconds = context
            .read<HomeCubit>()
            .state
            .ships
            .firstWhere((element) => element.symbol == widget.shipSymbol)
            .cooldown
            .remainingSeconds;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var actions = {
      'Find asteroids': () => showModalBottomSheet(
            context: context,
            builder: (context) => FindAsteroidsTab(
              systemSymbol: widget.systemSymbol,
              shipSymbol: widget.shipSymbol,
            ),
          ),
      remainingSeconds == 0
          ? 'Mine asteroid'
          : 'Extracting... ${remainingSeconds.sec}': () async {
        remainingSeconds =
            await context.read<HomeCubit>().mineAsteroid(widget.shipSymbol);
        stopReload = false;
        setState(() {});
        startTimer();
      }
    };

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: actions.length,
        itemBuilder: (context, index) {
          return SquareButton(
            onPressed: actions.entries.elementAt(index).value,
            text: actions.entries.elementAt(index).key,
          );
        },
      ),
    );
  }

  startTimer() {
    stopReload = false;
    timer = Timer.periodic(1.sec, (timer) {
      if (stopReload) {
        timer.cancel();
      } else if (mounted) {
        if (remainingSeconds == 0 || remainingSeconds < 0) {
          setState(() {
            stopReload = true;
          });
        } else {
          print('remainingSeconds: $remainingSeconds');
          setState(() {
            remainingSeconds--;
          });
        }
      }
    });
  }
}
