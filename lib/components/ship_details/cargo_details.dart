import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/ship_cargo.dart';

class CargoDetails extends StatelessWidget {
  final ShipCargo cargo;
  const CargoDetails({super.key, required this.cargo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [const Text('Capacity: '), Text(cargo.capacity.toString())],
        ),
        Row(
          children: [const Text('Units: '), Text(cargo.units.toString())],
        ),
        const Row(
          children: [Text('Inventory: ')],
        ),
        const SizedBox(height: Spacing.small,),
        GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            crossAxisSpacing: 5,
            children: List.generate(
              cargo.inventory.length,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(cargo.inventory[index].name, textAlign: TextAlign.center,),
                  Text(cargo.inventory[index].units.toString())
                ],
              ),
            ))
      ],
    );
  }
}
