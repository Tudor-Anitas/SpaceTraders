import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/market.dart';
import 'package:space_traders/pages/ships/ship_details/market_tab/buy_button.dart';
import 'package:space_traders/pages/ships/ship_details/market_tab/general_grid.dart';
import 'package:space_traders/pages/ships/ship_details/market_tab/trade_goods.dart';

class MarketTab extends StatelessWidget {
  final Market data;
  const MarketTab({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.95,
      builder: (context, controller) {
        return Padding(
          padding: const EdgeInsets.all(Spacing.small),
          child: Stack(
            children: [
              SingleChildScrollView(
                primary: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TradeGoodsSubpage(data: data.tradeGoods),
                    const SizedBox(
                      height: Spacing.large,
                    ),
                    NormalMarketGrid(
                        type: MarketGridType.import, marketData: data),
                    const SizedBox(
                      height: Spacing.small,
                    ),
                    NormalMarketGrid(
                        type: MarketGridType.export, marketData: data),
                    const SizedBox(
                      height: Spacing.large,
                    ),
                  ],
                ),
              ),
              const BuyButtonMarket()
            ],
          ),
        );
      },
    );
  }
}
