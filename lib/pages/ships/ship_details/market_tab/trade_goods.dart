import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_card.dart';
import 'package:space_traders/components/market_actions.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/components/spacer.dart';
import 'package:space_traders/methods/string.dart';
import 'package:space_traders/models/market_trade_goods.dart';

class TradeGoodsSubpage extends StatelessWidget {
  final List<MarketTradeGoods> data;
  const TradeGoodsSubpage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (data.isNotEmpty)
          Text(
            'Trade goods',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        if (data.isNotEmpty) const CustomSpacer(),
        if (data.isNotEmpty)
          GridView.count(
            // physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: List.generate(
              data.length,
              (index) {
                var currentCart = context.watch<HomeCubit>().state.marketCart;
                return Stack(
                  children: [
                    CustomCard(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(data[index].symbol.name),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('vol: '),
                                    Text(data[index].tradeVolume.toString())
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('pur: '),
                                    Text(
                                        '${data[index].purchasePrice.toString()} g')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('sell: '),
                                    Text(
                                        '${data[index].sellPrice.toString()} g')
                                  ],
                                ),
                                const SizedBox(
                                  height: Spacing.medium,
                                ),
                              ],
                            ),
                          ),
                          MarketActions(
                            marketGood: data[index],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).highlightColor,
                        ),
                        child: Center(
                          child: Text(
                            currentCart[data[index]] != null
                                ? currentCart[data[index]].toString()
                                : '0',
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
      ],
    );
  }
}
