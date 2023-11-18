import 'package:flutter/material.dart';
import 'package:space_traders/pages/home_page.dart/contracts/contracts.dart';
import 'package:space_traders/pages/home_page.dart/my_character.dart';

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
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyCharacter(),
              SizedBox(
                height: 10,
              ),
              MyContacts()
            ],
          ),
        ),
      ),
    );
  }
}
