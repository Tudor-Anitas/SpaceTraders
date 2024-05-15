import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';

class BottomSheetContainer extends StatelessWidget {
  final Widget child;
  const BottomSheetContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(Spacing.medium),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Theme.of(context).cardColor),
          child: child,
        ),
      ],
    );
  }
}
