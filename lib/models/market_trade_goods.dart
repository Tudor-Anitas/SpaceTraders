// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_trade_goods.freezed.dart';
part 'market_trade_goods.g.dart';

@freezed
class MarketTradeGoods with _$MarketTradeGoods {
  const factory MarketTradeGoods({
    @Default('') String symbol,
    @Default('') String type,
    @Default(0) int tradeVolume,
    @Default('') String supply,
    @Default('') String activity,
    @Default(0) int purchasePrice,
    @Default(0) int sellPrice,
  }) = _MarketTradeGoods;

  factory MarketTradeGoods.fromJson(Map<String, dynamic> json) => _$MarketTradeGoodsFromJson(json);
}

enum MarketTradeGoodsType { EXPORT, IMPORT, EXCHANGE }

enum MarketTradeGoodsSupply {
  SCARCE,
  LIMITED,
  MODERATE,
  HIGH,
  ABUNDANT,
}

enum MarketTradeGoodsActivity {
  WEAK,
  GROWING,
  STRONG,
  RESTRICTED,
}
