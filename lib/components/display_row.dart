import 'package:flutter/material.dart';
import 'package:space_traders/components/curves.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';

class DisplayPanel extends StatefulWidget {
  final String title;
  final dynamic value;
  const DisplayPanel({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  State<DisplayPanel> createState() => _DisplayPanelState();
}

class _DisplayPanelState extends State<DisplayPanel> {
  bool isClosed = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isClosed = !isClosed;
            });
          },
          child: Row(
            children: [
              Text(widget.title),
              Icon(
                isClosed ? Icons.arrow_drop_down : Icons.arrow_drop_up,
              ),
            ],
          ),
        ),
        AnimatedSize(
          duration: 500.ms,
          curve: CustomCurves.defaultCurve,
          child: isClosed
              ? const SizedBox()
              : Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(Spacing.medium),
                  decoration: BoxDecoration(
                    color: Theme.of(context).focusColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(widget.value),
                ),
        ),
      ],
    );
  }
}
