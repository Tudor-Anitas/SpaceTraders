import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/methods/duration.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    super.key,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double xPosition = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    HomeState state = context.watch<HomeCubit>().state;
    xPosition = state.isDetailsPage ? 0 : screenWidth;
    MainAxisAlignment alignment = MainAxisAlignment.spaceBetween;
    return AnimatedContainer(
      duration: 300.ms,
      curve: Curves.fastEaseInToSlowEaseOut,
      transform: Matrix4.translationValues(xPosition, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => context.read<HomeCubit>().changePage(),
            child: const Icon(Icons.arrow_back_ios),
          ),
          SizedBox(
            height: screenHeight * 0.1,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('Id:'),
                  Text(state.contracts.isEmpty
                      ? ''
                      : state.contracts[state.selectedContractIndex].id)
                ],
              ),
              Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('Faction symbol:'),
                  Text(state.contracts.isEmpty
                      ? ''
                      : state
                          .contracts[state.selectedContractIndex].factionSymbol)
                ],
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
              Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('Terms:'),
                  Flexible(
                    child: Text(state.contracts.isEmpty
                        ? ''
                        : state.contracts[state.selectedContractIndex].terms
                            .toString()),
                  )
                ],
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
              Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('Fulfilled:'),
                  Text(state.contracts.isEmpty
                      ? ''
                      : state.contracts[state.selectedContractIndex].fulfilled
                          .toString())
                ],
              ),
              Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('Expiration:'),
                  Text(state.contracts.isEmpty
                      ? ''
                      : state.contracts[state.selectedContractIndex].expiration)
                ],
              ),
              Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('Deadline to accept:'),
                  Text(state.contracts.isEmpty
                      ? ''
                      : state.contracts[state.selectedContractIndex]
                          .deadlineToAccept)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
