import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/cubit/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/popup.dart';

class MyCharacter extends StatefulWidget {
  const MyCharacter({super.key});

  @override
  State<MyCharacter> createState() => _MyCharacterState();
}

class _MyCharacterState extends State<MyCharacter> {
  @override
  Widget build(BuildContext context) {
    MainAxisAlignment alignment = MainAxisAlignment.spaceBetween;
    return CustomButton(
        onPressed: () async {
          await context.read<HomeCubit>().getMyAgentStats();
          if (context.mounted) {
            return showDialog(
              context: context,
              builder: (context) => CustomDialog(
                title: 'My character',
                children: [
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('Account id:'),
                      Flexible(
                          child: Text(
                              context.watch<HomeCubit>().state.agent.accountId))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('Symbol:'),
                      Text(context.watch<HomeCubit>().state.agent.symbol)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('Headquarters:'),
                      Text(context.watch<HomeCubit>().state.agent.headquarters)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('Credits:'),
                      Text(context
                          .watch<HomeCubit>()
                          .state
                          .agent
                          .credits
                          .toString())
                    ],
                  ),
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('Starting faction:'),
                      Text(context
                          .watch<HomeCubit>()
                          .state
                          .agent
                          .startingFaction)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('Ship count:'),
                      Text(context
                          .watch<HomeCubit>()
                          .state
                          .agent
                          .shipCount
                          .toString())
                    ],
                  ),
                ],
              ),
            );
          }
        },
        text: 'My character');
  }
}
