import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/asset_strings.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/pages/ships/shipyard.dart';

class MyShips extends StatefulWidget {
  const MyShips({super.key});

  @override
  State<MyShips> createState() => _MyShipsState();
}

class _MyShipsState extends State<MyShips> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar(context, 'My Ships'),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => const ShipYardPage(),
        ),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        child: const Icon(Icons.add),
      ),
      body: Stack(
        children: [
          Container(
            height: screenHeight * 0.8,
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02, vertical: Spacing.medium),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: context.watch<HomeCubit>().state.ships.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => context.push('/shipDetails',
                      extra:
                          context.read<HomeCubit>().state.ships[index].symbol),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        getShipImage(context
                            .watch<HomeCubit>()
                            .state
                            .ships[index]
                            .frame
                            .symbol),
                        fit: BoxFit.fill,
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        context.watch<HomeCubit>().state.ships[index].symbol,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
