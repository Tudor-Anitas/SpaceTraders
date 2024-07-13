import 'package:flutter/material.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/fuel.dart';

class FuelDetails extends StatelessWidget {
  final Fuel fuel;
  const FuelDetails({super.key, required this.fuel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [const Text('Current: '), Text(fuel.current.toString())],
        ),
        Row(
          children: [const Text('Capacity: '), Text(fuel.capacity.toString())],
        ),
        const Row(
          children: [Text('Consumed: ')],
        ),
        Row(
          children: [
            const Expanded(flex: 5, child: SizedBox()),
            Expanded(
              flex: 95,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('Consumed: '),
                      Text(fuel.consumed.amount.toString())
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Timestamp: '),
                      Text(formatDate(
                          DateTime.parse(fuel.consumed.timestamp.toString())))
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
