import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/contract.dart';

class ContractsPage extends StatefulWidget {
  const ContractsPage({
    super.key,
  });

  @override
  State<ContractsPage> createState() => _ContractsPageState();
}

class _ContractsPageState extends State<ContractsPage> {
  double xPosition = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    HomeState state = context.watch<HomeCubit>().state;
    xPosition = state.isDetailsPage ? -screenWidth : 0;
    List<Contract> contracts = state.contracts;
    return AnimatedContainer(
      duration: 300.ms,
      curve: Curves.fastEaseInToSlowEaseOut,
      transform: Matrix4.translationValues(xPosition, 0, 0),
      height: screenHeight * 0.8,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: ListView.builder(
        itemCount: contracts.length,
        itemBuilder: (context, index) => Row(
          children: [
            Expanded(
              flex: 80,
              child: CustomButton(
                text: contracts[index].factionSymbol,
                onPressed: () =>
                    context.read<HomeCubit>().changePage(contractIndex: index),
              ),
            ),
            Expanded(
              flex: 20,
              child: IconButton(
                icon: Icon(
                  Icons.check,
                  color: state.contracts[index].accepted
                      ? Colors.green
                      : Colors.grey,
                ),
                onPressed: () => context
                    .read<HomeCubit>()
                    .acceptContract(contracts[index].id),
              ),
            )
          ],
        ),
      ),
    );
  }
}
