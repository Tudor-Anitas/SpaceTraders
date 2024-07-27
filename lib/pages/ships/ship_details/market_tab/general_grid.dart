import 'package:flutter/material.dart';
import 'package:space_traders/components/spacer.dart';
import 'package:space_traders/models/export.dart';
import 'package:space_traders/models/import.dart';
import 'package:space_traders/models/market.dart';

class NormalMarketGrid extends StatelessWidget {
  final MarketGridType type;
  final Market marketData;
  const NormalMarketGrid(
      {super.key, required this.type, required this.marketData});

  @override
  Widget build(BuildContext context) {
    var data = type == MarketGridType.import
        ? marketData.imports
        : marketData.exports;

    return Column(
      children: [
        if (data.isNotEmpty)
          Text(
            'Imports',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        if (data.isNotEmpty) const CustomSpacer(),
        if (data.isNotEmpty)
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            crossAxisSpacing: 20,
            mainAxisSpacing: 0,
            childAspectRatio: 2,
            children: List.generate(
              data.length,
              (element) => Text(
                type == MarketGridType.import
                    ? (data[element] as Import).name
                    : (data[element] as Export).name,
                textAlign: TextAlign.center,
              ),
            ),
          )
      ],
    );
  }
}

enum MarketGridType { import, export }
