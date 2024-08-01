import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/components/square_buttons.dart';
import 'package:space_traders/methods/duration.dart';

class ShipDetailsPageButtons extends StatelessWidget {
  final PageController pageController;
  const ShipDetailsPageButtons({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    var buttonMagin = const EdgeInsets.all(Spacing.small);
    var duration = 1.sec;
    var curve = Curves.fastLinearToSlowEaseIn;
    var pageOffset = MediaQuery.of(context).size.width - Spacing.medium * 2;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 0,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 1,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 2,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 3,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 4,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 5,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 6,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 7,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 8,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
            SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * 9,
                  duration: duration, curve: curve),
              text: '',
              height: 40,
              width: 40,
              margin: buttonMagin,
            ),
          ],
        )
      ],
    );
  }
}
