// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/bottom_sheet.dart';
import 'package:space_traders/components/square_buttons.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/pages/ships/ship_details/find_asteroids_tab.dart';
import 'package:space_traders/pages/ships/ship_details/market_tab/market_tab.dart';
import 'package:space_traders/pages/ships/ship_details/mine_asteroid_tab.dart';

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
  late Future marketFuture;

  @override
  void initState() {
    super.initState();
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
    marketFuture = context.read<HomeCubit>().showMarketGoods(widget.shipSymbol);
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
      'Mine asteroid': () => showModalBottomSheet(
            context: context,
            builder: (context) => MineAsteroidTab(
              shipSymbol: widget.shipSymbol,
            ),
          ),
      'Show market': () => showModalBottomSheet(
            context: context,
            useSafeArea: true,
            isScrollControlled: true,
            builder: (context) => FutureBuilder(
              future: marketFuture,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('No market was found nearby'),
                    ],
                  );
                } else if (snapshot.hasData) {
                  return MarketTab(
                    data: snapshot.data.$2,
                  );
                } else {
                  return const BottomSheetContainer(child: SizedBox());
                }
              },
            ),
          ).whenComplete(() => context.read<HomeCubit>().clearCart()),
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
          setState(() {
            remainingSeconds--;
          });
        }
      }
    });
  }
}
