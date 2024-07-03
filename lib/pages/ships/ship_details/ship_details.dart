import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/display_row.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/ship_nav.dart';
import 'package:space_traders/pages/ships/ship_details/arrival_status.dart';
import 'package:space_traders/pages/ships/ship_details/ship_actions.dart';

class ShipDetails extends StatefulWidget {
  final String shipSymbol;
  const ShipDetails({super.key, required this.shipSymbol});

  @override
  State<ShipDetails> createState() => _ShipDetailsState();
}

class _ShipDetailsState extends State<ShipDetails> {
  @override
  Widget build(BuildContext context) {
    HomeState state = context.watch<HomeCubit>().state;
    Ship ship = state.ships
        .firstWhere((element) => element.symbol == widget.shipSymbol);
    return Scaffold(
      appBar: customAppBar(context, 'Ship details'),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.medium),
        child: BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state.message.text == States.reload.name) {
              context.read<HomeCubit>().listShips();
              setState(() {});
            }
          },
          child: RefreshIndicator(
            onRefresh: () => context.read<HomeCubit>().listShips(),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.shipSymbol,
                    child: Text(
                      ship.symbol,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                  if (ship.nav.status == ShipNavStatus.IN_TRANSIT.name)
                    ShipArrivalStatus(
                      shipSymbol: widget.shipSymbol,
                      route: state.ships
                          .firstWhere(
                              (element) => element.symbol == widget.shipSymbol)
                          .nav
                          .route,
                    ),
                  DisplayPanel(
                      title: 'Registration :',
                      value: ship.registration.toString()),
                  DisplayPanel(title: 'Nav:', value: ship.nav.toString()),
                  DisplayPanel(title: 'Crew:', value: ship.crew.toString()),
                  DisplayPanel(title: 'Frame:', value: ship.frame.toString()),
                  DisplayPanel(
                      title: 'Reactor:', value: ship.reactor.toString()),
                  DisplayPanel(title: 'Engine:', value: ship.engine.toString()),
                  DisplayPanel(
                      title: 'Cooldown:', value: ship.cooldown.toString()),
                  DisplayPanel(
                      title: 'Modules:', value: ship.modules.toString()),
                  DisplayPanel(title: 'Mounts:', value: ship.mounts.toString()),
                  DisplayPanel(title: 'Cargo:', value: ship.cargo.toString()),
                  DisplayPanel(title: 'Fuel:', value: ship.fuel.toString()),
                  ShipActions(
                    systemSymbol: ship.nav.systemSymbol,
                    shipSymbol: ship.symbol,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
