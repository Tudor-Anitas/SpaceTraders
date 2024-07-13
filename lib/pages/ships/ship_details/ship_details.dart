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
                      page: ShipDetailsPage.registration,
                      value: ship.registration),
                  DisplayPanel(page: ShipDetailsPage.nav, value: ship.nav),
                  DisplayPanel(page: ShipDetailsPage.crew, value: ship.crew),
                  DisplayPanel(page: ShipDetailsPage.frame, value: ship.frame),
                  DisplayPanel(
                      page: ShipDetailsPage.reactor, value: ship.reactor),
                  DisplayPanel(
                      page: ShipDetailsPage.engine, value: ship.engine),
                  DisplayPanel(
                      page: ShipDetailsPage.cooldown, value: ship.cooldown),
                  DisplayPanel(
                      page: ShipDetailsPage.modules, value: ship.modules),
                  DisplayPanel(
                      page: ShipDetailsPage.mounts, value: ship.mounts),
                  DisplayPanel(
                      page: ShipDetailsPage.cargo, value: ship.cargo),
                  DisplayPanel(
                      page: ShipDetailsPage.fuel, value: ship.fuel),
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

enum ShipDetailsPage {
  registration,
  nav,
  crew,
  frame,
  reactor,
  engine,
  cooldown,
  modules,
  mounts,
  cargo,
  fuel,
}
