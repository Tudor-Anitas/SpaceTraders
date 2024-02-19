import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/row_distinction.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/pages/contracts/contract_terms.dart';

class ContractDetails extends StatefulWidget {
  const ContractDetails({
    super.key,
  });

  @override
  State<ContractDetails> createState() => _ContractDetailsState();
}

class _ContractDetailsState extends State<ContractDetails> {
  double xPosition = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    HomeState state = context.watch<HomeCubit>().state;
    MainAxisAlignment alignment = MainAxisAlignment.spaceBetween;
    return Scaffold(
      appBar: customAppBar(
          context, state.contracts[state.selectedContractIndex].factionSymbol),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: alignment,
                  children: [
                    const Text('Id:'),
                    SizedBox(
                      width: screenWidth * .3,
                      child: Text(state.contracts.isEmpty
                          ? ''
                          : state.contracts[state.selectedContractIndex].id),
                    )
                  ],
                ),
                RowDistinction(
                  child: Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('Faction symbol:'),
                      Text(state.contracts.isEmpty
                          ? ''
                          : state.contracts[state.selectedContractIndex]
                              .factionSymbol)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: alignment,
                  children: [
                    const Text('Type:'),
                    Text(state.contracts.isEmpty
                        ? ''
                        : state.contracts[state.selectedContractIndex].type)
                  ],
                ),
                ContractTerms(
                  terms: state.contracts[state.selectedContractIndex].terms,
                ),
                Row(
                  mainAxisAlignment: alignment,
                  children: [
                    const Text('Accepted:'),
                    Text(state.contracts.isEmpty
                        ? ''
                        : state.contracts[state.selectedContractIndex].accepted
                            .toString())
                  ],
                ),
                RowDistinction(
                  child: Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('Fulfilled:'),
                      Text(state.contracts.isEmpty
                          ? ''
                          : state
                              .contracts[state.selectedContractIndex].fulfilled
                              .toString())
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: alignment,
                  children: [
                    const Text('Expiration:'),
                    Text(state.contracts.isEmpty
                        ? ''
                        : formatDate(state
                            .contracts[state.selectedContractIndex].expiration))
                  ],
                ),
                RowDistinction(
                  child: Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('Deadline to accept:'),
                      Text(
                        state.contracts.isEmpty
                            ? ''
                            : formatDate(state
                                .contracts[state.selectedContractIndex]
                                .deadlineToAccept),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Spacing.medium,
            ),
            CustomButton(
              onPressed: () {
                context.read<HomeCubit>().acceptContract(
                      state.contracts[state.selectedContractIndex].id,
                    );
              },
              text: state.contracts[state.selectedContractIndex].accepted
                  ? 'Accepted'
                  : 'Accept contract',
            ),
          ],
        ),
      ),
    );
  }
}
