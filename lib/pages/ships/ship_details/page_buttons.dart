import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
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
          children: List.generate(
            5,
            (index) => SquareButton(
              onPressed: () => pageController.animateTo(pageOffset * index,
                  duration: duration, curve: curve),
              height: 40,
              width: 40,
              margin: buttonMagin,
              icon: getIcon(index),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => SquareButton(
              onPressed: () => pageController.animateTo(
                  pageOffset * (index + 5),
                  duration: duration,
                  curve: curve),
              height: 40,
              width: 40,
              margin: buttonMagin,
              icon: getIcon(index + 5),
            ),
          ),
        )
      ],
    );
  }

  IconData getIcon(int index) {
    switch (index) {
      case 0:
        return PhosphorIcons.mapTrifold();

      case 1:
        return PhosphorIcons.usersThree();

      case 2:
        return PhosphorIcons.airplaneTilt();

      case 3:
        return PhosphorIcons.nuclearPlant();

      case 4:
        return PhosphorIcons.engine();

      case 5:
        return PhosphorIcons.hourglass();

      case 6:
        return PhosphorIcons.lego();

      case 7:
        return PhosphorIcons.cpu();

      case 8:
        return PhosphorIcons.cube();

      case 9:
        return PhosphorIcons.gasCan();

      default:
        return PhosphorIcons.x();
    }
  }
}
