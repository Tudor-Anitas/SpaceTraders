import 'package:flutter/material.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/methods/duration.dart';

class CarouselNavigation extends StatefulWidget {
  final List<Widget> children;
  final int currentIndex;
  const CarouselNavigation(
      {super.key, required this.children, required this.currentIndex});

  @override
  State<CarouselNavigation> createState() => _CarouselNavigationState();
}

class _CarouselNavigationState extends State<CarouselNavigation> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(widget.children.length, (index) {
        return AnimatedContainer(
          duration: 400.ms,
          curve: Curves.fastEaseInToSlowEaseOut,
          transform: Matrix4.translationValues(
              translateX(context, widget.currentIndex, index), 0, 0),
          child: widget.children[index],
        );
      }),
    );
  }
}

double translateX(BuildContext context, int currentPageIndex, int index) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (index < currentPageIndex) {
    return -screenWidth;
  } else if (index == currentPageIndex) {
    return 0;
  } else if (index > currentPageIndex) {
    return screenWidth;
  }
  return 0;
}
