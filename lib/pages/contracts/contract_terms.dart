import 'package:flutter/material.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/progress_bar.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/components/spacer.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/terms.dart';

class ContractTerms extends StatelessWidget {
  final Terms terms;
  const ContractTerms({super.key, required this.terms});

  @override
  Widget build(BuildContext context) {
    var alignment = MainAxisAlignment.spaceBetween;
    return Column(
      children: [
        Text(
          'Terms',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Row(
          mainAxisAlignment: alignment,
          children: [
            const Text('Deadline:'),
            Text(
              formatDate(terms.deadline),
              textAlign: TextAlign.end,
            )
          ],
        ),
        const CustomSpacer(),
        CustomCard(
          child: Column(
            children: [
              Text(
                'Payment',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('On accepted: '),
                  Text('${terms.payment.onAccepted} G')
                ],
              ),
              Row(
                mainAxisAlignment: alignment,
                children: [
                  const Text('On fullfilled: '),
                  Text('${terms.payment.onFulfilled} G')
                ],
              ),
            ],
          ),
        ),
        const CustomSpacer(),
        Text(
          'Deliver',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        for (var good in terms.deliver)
          CustomCard(
            child: Row(
              mainAxisAlignment: alignment,
              children: [
                Expanded(
                  flex: 40,
                  child: Text(
                    good.tradeSymbol,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Expanded(
                  flex: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('units required'),
                      Row(
                        children: [
                          CustomProgressBar(
                              currentValue: good.unitsFulfilled,
                              maxValue: good.unitsRequired),
                          const SizedBox(
                            width: Spacing.xs,
                          ),
                          Text('${good.unitsFulfilled}/${good.unitsRequired}')
                        ],
                      ),
                      const SizedBox(
                        height: Spacing.medium,
                      ),
                      const Text('Destination'),
                      Text(good.destinationSymbol)
                    ],
                  ),
                )
              ],
            ),
          ),
        const CustomSpacer(),
      ],
    );
  }
}
