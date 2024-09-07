import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/blocs/ships/ships_cubit.dart';
import 'package:space_traders/blocs/ships/ships_state.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/carousel_navigation.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/pages/ships/ship_details/frame_details/frame_details.dart';
import 'package:space_traders/pages/ships/ship_details/modules/modules_mounts.dart';
import 'package:space_traders/pages/ships/ship_details/ship_details_navigation.dart';

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
    ShipsState state = context.watch<ShipsCubit>().state;
    
    Ship ship = state.ships
        .firstWhere((element) => element.symbol == widget.shipSymbol);
    return Scaffold(
      appBar: customAppBar(context, 'Ship details'),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.medium),
        child: BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state.message.text == States.reload.name) {
              context.read<ShipsCubit>().listShips();
              setState(() {});
            }
          },
          child: Column(
            children: [
              Expanded(
                flex: 90,
                child: CarouselNavigation(
                  currentIndex: state.pageIndex,
                    children: [
                      FrameDetails(ship: ship),
                      ModuleMountsDetails(ship: ship)
                    ]),
              ),
              const ShipDetailsNavigation()
            ],
          ),
        ),
      ),
    );
  }
}
