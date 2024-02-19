import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/row_distinction.dart';
import 'package:space_traders/components/sizes.dart';

class MyCharacter extends StatefulWidget {
  const MyCharacter({super.key});

  @override
  State<MyCharacter> createState() => _MyCharacterState();
}

class _MyCharacterState extends State<MyCharacter> {
  @override
  Widget build(BuildContext context) {
    MainAxisAlignment alignment = MainAxisAlignment.spaceBetween;
    return Scaffold(
      appBar: customAppBar(context, 'my character'),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.medium),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: alignment,
              children: [
                const Text('Account id:'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Text(
                    context.watch<HomeCubit>().state.agent.accountId,
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            ),
            RowDistinction(
              child: Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('Symbol:'),
                  Text(context.watch<HomeCubit>().state.agent.symbol)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: alignment,
              children: [
                const Text('Headquarters:'),
                Text(context.watch<HomeCubit>().state.agent.headquarters)
              ],
            ),
            RowDistinction(
              child: Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('Credits:'),
                  Text(
                      context.watch<HomeCubit>().state.agent.credits.toString())
                ],
              ),
            ),
            Row(
              mainAxisAlignment: alignment,
              children: [
                const Text('Starting faction:'),
                Text(context.watch<HomeCubit>().state.agent.startingFaction)
              ],
            ),
            RowDistinction(
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
