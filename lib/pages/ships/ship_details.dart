import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/display_row.dart';
import 'package:space_traders/components/sizes.dart';

class ShipDetails extends StatefulWidget {
  final int index;
  const ShipDetails({super.key, required this.index});

  @override
  State<ShipDetails> createState() => _ShipDetailsState();
}

class _ShipDetailsState extends State<ShipDetails> {
  @override
  Widget build(BuildContext context) {
    HomeState state = context.watch<HomeCubit>().state;
    return Scaffold(
      appBar: customAppBar(context, 'Ship details'),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.medium),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: widget.index,
                child: Text(
                  state.ships[widget.index].symbol,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              DisplayPanel(
                  title: 'Registration :',
                  value: state.ships[widget.index].registration.toString()),
              DisplayPanel(
                  title: 'Nav:',
                  value: state.ships[widget.index].nav.toString()),
              DisplayPanel(
                  title: 'Crew:',
                  value: state.ships[widget.index].crew.toString()),
              DisplayPanel(
                  title: 'Frame:',
                  value: state.ships[widget.index].frame.toString()),
              DisplayPanel(
                  title: 'Reactor:',
                  value: state.ships[widget.index].reactor.toString()),
              DisplayPanel(
                  title: 'Engine:',
                  value: state.ships[widget.index].engine.toString()),
              DisplayPanel(
                  title: 'Cooldown:',
                  value: state.ships[widget.index].cooldown.toString()),
              DisplayPanel(
                  title: 'Modules:',
                  value: state.ships[widget.index].modules.toString()),
              DisplayPanel(
                  title: 'Mounts:',
                  value: state.ships[widget.index].mounts.toString()),
              DisplayPanel(
                  title: 'Cargo:',
                  value: state.ships[widget.index].cargo.toString()),
              DisplayPanel(
                  title: 'Fuel:',
                  value: state.ships[widget.index].fuel.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
