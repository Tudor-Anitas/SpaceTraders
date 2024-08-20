// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/progress_bar.dart';
import 'package:space_traders/components/sizes.dart';

class ElementStatus extends StatefulWidget {
  final String title;
  final Color color;
  final IconData icon;
  final int currentValue;
  final int maxValue;
  const ElementStatus({
    Key? key,
    required this.title,
    required this.color,
    required this.icon,
    required this.currentValue,
    required this.maxValue,
  }) : super(key: key);

  @override
  State<ElementStatus> createState() => _ElementStatusState();
}

class _ElementStatusState extends State<ElementStatus> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return CustomCard(
      width: (screenWidth - 5 * Spacing.medium) * 0.5,
      padding: const EdgeInsets.symmetric(
          vertical: Spacing.medium, horizontal: Spacing.medium),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.title),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PhosphorIcon(
                widget.icon,
                color: widget.color,
                size: 12,
              ),
              const SizedBox(
                width: Spacing.small,
              ),
              Text('${widget.currentValue}/${widget.maxValue}')
            ],
          ),
          Row(
            children: [
              CustomProgressBar(
                color: widget.color,
                currentValue: widget.currentValue,
                maxValue: widget.maxValue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
