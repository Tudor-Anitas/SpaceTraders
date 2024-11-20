import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/ships/ships_cubit.dart';
import 'package:space_traders/components/progress_bar.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/route.dart' as ship;
import 'package:space_traders/models/ship_nav.dart';

class ShipArrivalStatus extends StatefulWidget {
  final String shipSymbol;
  final ship.Route route;
  const ShipArrivalStatus(
      {super.key, required this.shipSymbol, required this.route});

  @override
  State<ShipArrivalStatus> createState() => _ShipArrivalStatusState();
}

class _ShipArrivalStatusState extends State<ShipArrivalStatus> {
  bool stopReload = false;
  bool wasTimerStarted = false;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    var arrivalTime = DateTime.parse(widget.route.arrival);
    var ship = context
        .read<ShipsCubit>()
        .state
        .ships
        .firstWhere((element) => element.symbol == widget.shipSymbol);
    // ignore: unused_local_variable
    if (mounted) {
      timer = Timer.periodic(1.sec, (timer) {
        var now = DateTime.now();
        now.isAfter(arrivalTime)
            ? stopReload = true
            : {stopReload = false, wasTimerStarted = true};
        debugPrint('reload timer');

        if (mounted && !stopReload) {
          setState(() {});
        } else if (stopReload) {
          timer.cancel();
          if (mounted && ship.fuel.current < ship.fuel.capacity) {
            context.read<ShipsCubit>().finishTransit(
                context,
                context
                    .read<ShipsCubit>()
                    .state
                    .ships
                    .firstWhere(
                        (element) => element.symbol == widget.shipSymbol)
                    .symbol);
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var shipState = context
        .watch<ShipsCubit>()
        .state
        .ships
        .firstWhere((element) => element.symbol == widget.shipSymbol);

    var nav = shipState.nav;
    var fuel = shipState.fuel;
    var route = nav.route;

    if (!wasTimerStarted) {
      var arrivalTime = DateTime.parse(widget.route.arrival);
      var ship = context
          .read<ShipsCubit>()
          .state
          .ships
          .firstWhere((element) => element.symbol == widget.shipSymbol);

      if (mounted) {
        timer = Timer.periodic(1.sec, (timer) {
          var now = DateTime.now();
          now.isAfter(arrivalTime) ? stopReload = true : stopReload = false;
          debugPrint('reload timer');

          if (mounted && !stopReload) {
            setState(() {});
          } else if (stopReload) {
            timer.cancel();
            if (mounted && fuel.current < fuel.capacity) {
              context.read<ShipsCubit>().finishTransit(
                  context,
                  context
                      .read<ShipsCubit>()
                      .state
                      .ships
                      .firstWhere(
                          (element) => element.symbol == widget.shipSymbol)
                      .symbol);
            }
          }
        });
      }
    }

    var departureTime = DateTime.parse(route.departureTime);
    var arrivalTime = DateTime.parse(route.arrival);
    var tripTime = arrivalTime.difference(departureTime);
    var now = DateTime.now();
    if (now.isAfter(arrivalTime)) {
      setState(() {
        debugPrint('stop reload');
        stopReload = true;
      });
    }

    if (departureTime.isAfter(now)) {
      now = departureTime;
    }
    var currentTime = now.difference(departureTime);
    if (currentTime.compareTo(tripTime) > 0) {
      tripTime = currentTime;
    }
    debugPrint(
        'tripTime: $tripTime ---- currentTime: $currentTime ---- departureTime: $departureTime');

    return CustomProgressBar(
        currentValue: currentTime.inSeconds, maxValue: tripTime.inSeconds);
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }
}
