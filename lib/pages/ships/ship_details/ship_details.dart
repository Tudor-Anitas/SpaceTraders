import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/carousel_navigation.dart';
import 'package:space_traders/components/ship_details/cargo_details.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/pages/ships/ship_details/frame_details/frame_details.dart';
import 'package:space_traders/pages/ships/ship_details/modules/modules_mounts.dart';

class ShipDetails extends StatefulWidget {
  final String shipSymbol;
  const ShipDetails({super.key, required this.shipSymbol});

  @override
  State<ShipDetails> createState() => _ShipDetailsState();
}

class _ShipDetailsState extends State<ShipDetails> {
  var pageController = PageController();
  int currentIndex = 0;

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
          child: Column(
            children: [
              Expanded(
                flex: 90,
                child: CarouselNavigation(
                    currentIndex: currentIndex,
                    children: [
                      FrameDetails(ship: ship),
                      ModuleMountsDetails(ship: ship)
                    ]),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      icon: PhosphorIcon(
                        PhosphorIcons.rocket(),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      icon: PhosphorIcon(
                        PhosphorIcons.cpu(),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 2;
                        });
                      },
                      icon: PhosphorIcon(
                        PhosphorIcons.nuclearPlant(),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 3;
                        });
                      },
                      icon: PhosphorIcon(
                        PhosphorIcons.engine(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
