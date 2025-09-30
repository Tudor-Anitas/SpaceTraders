import 'package:freezed_annotation/freezed_annotation.dart';
import 'exchange.dart';
import 'market_trade_goods.dart';

part 'market.freezed.dart';
part 'market.g.dart';

@freezed
class Market with _$Market {
  const factory Market({
    required String symbol,
    @Default([]) List<MarketTradeGoods> tradeGoods,
    @Default([]) List<Exchange> transactions,
    @Default([]) List<String> imports,
    @Default([]) List<String> exports,
    @Default([]) List<String> exchange,
  }) = _Market;

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);
}
