import 'package:flutter/material.dart';
import 'package:space_traders/asset_strings.dart';
import 'package:space_traders/components/headline.dart';
import 'package:space_traders/components/sizes.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(Spacing.small),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetStrings.background), fit: BoxFit.cover),
        ),
        child: const Column(
          children: [
            Expanded(flex: 10, child: SizedBox()),
            Expanded(
              flex: 10,
              child: Headline(title: 'Space Invaders'),
            ),
            Expanded(
              flex: 80,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
