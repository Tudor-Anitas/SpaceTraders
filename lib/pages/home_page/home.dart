import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/asset_strings.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/headline.dart';
import 'package:space_traders/components/sizes.dart';

import 'package:space_traders/pages/ships/ships.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getLoginData();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetStrings.background), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 10,
              child: SizedBox(),
            ),
            const Expanded(flex: 10, child: Headline(title: 'Space Invaders')),
            Expanded(
              flex: 80,
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  bool isRegistered = state.agent.accountId.isNotEmpty;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        onPressed: () => context.push('/register'),
                        text: 'Register',
                      ),
                      const SizedBox(
                        height: Sizes.small,
                      ),
                      if (isRegistered)
                        CustomButton(
                          onPressed: () => context.push('/myCharacter'),
                          text: 'my character',
                        ),
                      const SizedBox(
                        height: Sizes.small,
                      ),
                      if (isRegistered)
                        CustomButton(
                          onPressed: () => context.push('/contracts'),
                          text: 'view contracts',
                        ),
                      const SizedBox(
                        height: Sizes.small,
                      ),
                      if (isRegistered) const MyShips(),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
