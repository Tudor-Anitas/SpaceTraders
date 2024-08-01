import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/scrollable.dart';
import 'package:space_traders/components/ship_details/cargo_details.dart';
import 'package:space_traders/components/ship_details/cooldown_details.dart';
import 'package:space_traders/components/ship_details/crew_details.dart';
import 'package:space_traders/components/ship_details/engine_details.dart';
import 'package:space_traders/components/ship_details/frame_details.dart';
import 'package:space_traders/components/ship_details/fuel_details.dart';
import 'package:space_traders/components/ship_details/modules_details.dart';
import 'package:space_traders/components/ship_details/mounts_details.dart';
import 'package:space_traders/components/ship_details/nav_details.dart';
import 'package:space_traders/components/ship_details/reactor_details.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/ship_nav.dart';
import 'package:space_traders/pages/ships/ship_details/arrival_status.dart';
import 'package:space_traders/pages/ships/ship_details/page_buttons.dart';
import 'package:space_traders/pages/ships/ship_details/ship_actions.dart';

class ShipDetails extends StatefulWidget {
  final String shipSymbol;
  const ShipDetails({super.key, required this.shipSymbol});

  @override
  State<ShipDetails> createState() => _ShipDetailsState();
}

class _ShipDetailsState extends State<ShipDetails> {
  var pageController = PageController();

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
                  const SizedBox(
                    height: Spacing.medium,
                  ),
                  ShipDetailsPageButtons(
                    pageController: pageController,
                  ),
                  CustomScrollable(
                    pageController: pageController,
                    axis: Axis.horizontal,
                    children: [
                      NavDetails(shipNav: ship.nav),
                      CrewDetails(
                        crew: ship.crew,
                      ),
                      FrameDetails(
                        frame: ship.frame,
                      ),
                      ReactorDetails(
                        reactor: ship.reactor,
                      ),
                      EngineDetails(
                        engine: ship.engine,
                      ),
                      CooldownDetails(
                        cooldown: ship.cooldown,
                      ),
                      ModulesDetails(
                        modules: ship.modules,
                      ),
                      MountsDetails(
                        mounts: ship.mounts,
                      ),
                      CargoDetails(
                        cargo: ship.cargo,
                      ),
                      FuelDetails(
                        fuel: ship.fuel,
                      )
                    ],
                  ),
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
