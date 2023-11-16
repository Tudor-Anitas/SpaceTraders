import 'package:flutter/material.dart';
import 'package:space_traders/components/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [CustomButton(onPressed: () {}, text: 'My character')],
        ),
      ),
    );
  }
}
