import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';

import 'package:space_traders/models/contract.dart';

class ContractsPage extends StatefulWidget {
  const ContractsPage({
    super.key,
  });

  @override
  State<ContractsPage> createState() => _ContractsPageState();
}

class _ContractsPageState extends State<ContractsPage> {
  @override
  Widget build(BuildContext context) {
    HomeState state = context.watch<HomeCubit>().state;
    List<Contract> contracts = state.contracts;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: contracts.length,
        itemBuilder: (context, index) => Row(
          children: [
            Expanded(
              flex: 80,
              child: CustomButton(
                text: contracts[index].factionSymbol,
                onPressed: () => context
                    .read<HomeCubit>()
                    .selectContract(contractIndex: index),
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
