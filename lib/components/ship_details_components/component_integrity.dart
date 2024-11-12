import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/progress_bar.dart';
import 'package:space_traders/components/sizes.dart';

class ComponentIntegrity extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final int currentValue;
  final int? maxValue;
  final bool showBar;

  const ComponentIntegrity(
      {super.key,
      required this.icon,
      required this.color,
      required this.currentValue,
      required this.maxValue,
      required this.text,
      this.showBar = true});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          Row(
            children: [
              PhosphorIcon(
                icon,
                size: 30,
                color: color,
              ),
              const SizedBox(
                width: Spacing.small,
              ),
              /*  */
              Text('$currentValue${showBar ? '%' : ''}')
            ],
          ),
          if (showBar)
            Row(
              children: [
                CustomProgressBar(
                  currentValue: currentValue,
                  maxValue: maxValue ?? 0,
                  color: color,
                )
              ],
            )
        ],
      ),
    );
  }
}
