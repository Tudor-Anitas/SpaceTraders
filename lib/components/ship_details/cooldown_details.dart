import 'package:flutter/material.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/cooldown.dart';

class CooldownDetails extends StatelessWidget {
  final Cooldown cooldown;
  const CooldownDetails({super.key, required this.cooldown});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [const Text('Symbol: '), Text(cooldown.shipSymbol)],
          ),
          Row(
            children: [
              const Text('Total seconds: '),
              Text(cooldown.totalSeconds.toString())
            ],
          ),
          Row(
            children: [
              const Text('Remaining seconds: '),
              Text(cooldown.remainingSeconds.toString())
            ],
          ),
          Row(
            children: [
              const Text('Expiration: '),
              Text(
                cooldown.expiration.isNotEmpty
                    ? formatDate(DateTime.parse(cooldown.expiration))
                    : '',
              )
            ],
          ),
        ],
      ),
    );
  }
}
