import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final List<Widget>? children;
  final Widget? child;
  const CustomDialog(
      {super.key, required this.title, this.children, this.child});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    assert(child != null || children != null);
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.1, vertical: screenHeight * 0.1),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child ??
            Column(
              children: [Text(title), ...children!],
            ),
      ),
    );
  }
}
