import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/contract.dart';

class MyContracts extends StatefulWidget {
  const MyContracts({super.key});

  @override
  State<MyContracts> createState() => _MyContractsState();
}

class _MyContractsState extends State<MyContracts> {
  @override
  Widget build(BuildContext context) {
    HomeState state = context.watch<HomeCubit>().state;
    List<Contract> contracts = state.contracts;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Spacing.medium),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: contracts.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Expanded(
                    flex: 80,
                    child: CustomButton(
                      text: contracts[index].factionSymbol,
                      onPressed: () {
                        context
                            .read<HomeCubit>()
                            .selectContract(contractIndex: index);
                        context.push('/contracts/contractDetails');
                      },
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
          ),
        ),
      ),
    );
  }
}
