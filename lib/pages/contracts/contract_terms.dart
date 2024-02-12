import 'package:flutter/material.dart';
import 'package:space_traders/components/row_distinction.dart';
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
        Row(
          mainAxisAlignment: alignment,
          children: [const Text('Deadline:'), Text(formatDate(terms.deadline), textAlign: TextAlign.end,)],
        ),
        RowDistinction(
          color: Theme.of(context).highlightColor,
          child: Row(
            mainAxisAlignment: alignment,
            children: [
              const Text('Payment:'),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('On accepted:'),
                      Text(terms.payment.onAccepted.toString())
                    ],
                  ),
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('On fullfilled:'),
                      Text(terms.payment.onFulfilled.toString())
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        for (var good in terms.deliver)
          Row(
            mainAxisAlignment: alignment,
            children: [
              const Text('Deliver'),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('symbol:'),
                      Text(good.tradeSymbol),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('destination:'),
                      Text(good.destinationSymbol),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('units required:'),
                      Text(good.unitsRequired.toString()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: alignment,
                    children: [
                      const Text('units fullfilled:'),
                      Text(good.unitsFulfilled.toString()),
                    ],
                  ),
                ],
              )
            ],
          )
      ],
    );
  }
}
