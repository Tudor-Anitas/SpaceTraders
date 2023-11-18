import 'package:flutter/material.dart';
import 'package:space_traders/pages/home_page.dart/contracts/contracts.dart';
import 'package:space_traders/pages/home_page.dart/my_character.dart';
import 'package:space_traders/pages/home_page.dart/ships/ships.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCharacter(),
                    SizedBox(
                      width: 10,
                    ),
                    MyContacts()
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyShips(),
                    SizedBox(
                      width: 10,
                    ),
                    // MyContacts()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
