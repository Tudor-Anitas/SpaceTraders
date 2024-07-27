import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/market_trade_goods.dart';

class MarketActions extends StatelessWidget {
  final MarketTradeGoods marketGood;
  const MarketActions({super.key, required this.marketGood});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Material(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(20),
            ),
            color: Theme.of(context).colorScheme.error,
            child: InkWell(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(20),
              ),
              onTap: () => context.read<HomeCubit>().removeFromCart(marketGood),
              child: const SizedBox(
                height: Spacing.large,
                child: Icon(
                  Icons.remove,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Material(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(20),
            ),
            color: Theme.of(context).primaryColor,
            child: InkWell(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(20),
              ),
              // splashColor: Colors.red,
              onTap: () => context.read<HomeCubit>().addToCart(marketGood),
              child: const SizedBox(
                height: Spacing.large,
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
