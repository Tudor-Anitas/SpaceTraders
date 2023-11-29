import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/display_row.dart';
import 'package:space_traders/components/popup.dart';

class MyShips extends StatelessWidget {
  const MyShips({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return CustomButton(
      onPressed: () async {
        await context.read<HomeCubit>().listShips();
        if (context.mounted) {
          return showDialog(
            context: context,
            builder: (context) => CustomDialog(
              title: 'My ships',
              child: Stack(
                children: [
                  Container(
                    height: screenHeight * 0.8,
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: ListView.builder(
                      itemCount: context.watch<HomeCubit>().state.ships.length,
                      itemBuilder: (context, index) {
                        HomeState state = context.watch<HomeCubit>().state;
                        return Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              color: Theme.of(context).canvasColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              DisplayRow(
                                  title: 'Symbol:',
                                  value: state.ships[index].symbol),
                              DisplayRow(
                                  title: 'Registration :',
                                  value: state.ships[index].registration
                                      .toString()),
                              DisplayRow(
                                  title: 'Nav:',
                                  value: state.ships[index].nav.toString()),
                              DisplayRow(
                                  title: 'Crew:',
                                  value: state.ships[index].crew.toString()),
                              DisplayRow(
                                  title: 'Frame:',
                                  value: state.ships[index].frame.toString()),
                              DisplayRow(
                                  title: 'Reactor:',
                                  value: state.ships[index].reactor.toString()),
                              DisplayRow(
                                  title: 'Engine:',
                                  value: state.ships[index].engine.toString()),
                              DisplayRow(
                                  title: 'Cooldown:',
                                  value:
                                      state.ships[index].cooldown.toString()),
                              DisplayRow(
                                  title: 'Modules:',
                                  value: state.ships[index].modules.toString()),
                              DisplayRow(
                                  title: 'Mounts:',
                                  value: state.ships[index].mounts.toString()),
                              DisplayRow(
                                  title: 'Cargo:',
                                  value: state.ships[index].cargo.toString()),
                              DisplayRow(
                                  title: 'Fuel:',
                                  value: state.ships[index].fuel.toString()),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
      text: 'My Ships',
    );
  }
}
