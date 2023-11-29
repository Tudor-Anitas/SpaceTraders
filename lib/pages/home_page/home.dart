import 'package:flutter/material.dart';
import 'package:space_traders/asset_strings.dart';
import 'package:space_traders/components/headline.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/pages/home_page/contracts/contracts.dart';
import 'package:space_traders/pages/home_page/my_character.dart';
import 'package:space_traders/pages/home_page/register.dart';
import 'package:space_traders/pages/home_page/ships/ships.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            image: AssetImage(AssetStrings.background),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 10,
              child: SizedBox(),
            ),
            Expanded(flex: 10, child: Headline(title: 'Space Invaders')),
            Expanded(
              flex: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Register(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyCharacter(),
                      SizedBox(
                        width: Sizes.space_10,
                      ),
                      MyContacts()
                    ],
                  ),
                  SizedBox(
                    height: Sizes.space_10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyShips(),
                      SizedBox(
                        width: Sizes.space_10,
                      ),
                      // MyContacts()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
