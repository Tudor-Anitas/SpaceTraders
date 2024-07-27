import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/market_trade_goods.dart';

class BuyButtonMarket extends StatelessWidget {
  const BuyButtonMarket({super.key});

  @override
  Widget build(BuildContext context) {
    var state = context.watch<HomeCubit>().state;
    return state.marketCart.isNotEmpty
        ? Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const SizedBox(
                  height: Spacing.large,
                ),
                CustomButton(
                  text:
                      'Buy for ${totalAmount(context)}\nCurrent funds ${state.agent.credits}',
                  onPressed: () {},
                ),
              ],
            ),
          )
        : const SizedBox();
  }

  String totalAmount(BuildContext context) {
    int totalCost = 0;
    var state = context.read<HomeCubit>().state;
    for (MarketTradeGoods good in state.marketCart.keys) {
      totalCost += good.purchasePrice * state.marketCart[good]!;
    }
    return totalCost.toString();
  }
}
