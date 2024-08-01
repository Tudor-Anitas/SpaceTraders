import 'package:flutter/material.dart';

class CustomScrollable extends StatefulWidget {
  final List<Widget> children;
  final Axis axis;
  final PageController pageController;
  const CustomScrollable(
      {super.key,
      required this.children,
      required this.axis,
      required this.pageController});

  @override
  State<CustomScrollable> createState() => _CustomScrollableState();
}

class _CustomScrollableState extends State<CustomScrollable> {
  var controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .6,
      child: PageView(
        scrollDirection: widget.axis,
        controller: widget.pageController,
        children: widget.children,
      ),
    );
  }
}
