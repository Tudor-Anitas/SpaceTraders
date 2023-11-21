// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:equatable/equatable.dart';

class MarketTradeGoods extends Equatable {
  final String symbol;
  final String type;
  final int tradeVolume;
  final String supply;
  final String activity;
  final int purchasePrice;
  final int sellPrice;
  const MarketTradeGoods({
    required this.symbol,
    required this.type,
    required this.tradeVolume,
    required this.supply,
    required this.activity,
    required this.purchasePrice,
    required this.sellPrice,
  });

  MarketTradeGoods copyWith({
    String? symbol,
    String? type,
    int? tradeVolume,
    String? supply,
    String? activity,
    int? purchasePrice,
    int? sellPrice,
  }) {
    return MarketTradeGoods(
      symbol: symbol ?? this.symbol,
      type: type ?? this.type,
      tradeVolume: tradeVolume ?? this.tradeVolume,
      supply: supply ?? this.supply,
      activity: activity ?? this.activity,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      sellPrice: sellPrice ?? this.sellPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'type': type,
      'tradeVolume': tradeVolume,
      'supply': supply,
      'activity': activity,
      'purchasePrice': purchasePrice,
      'sellPrice': sellPrice,
    };
  }

  factory MarketTradeGoods.fromMap(Map<String, dynamic> map) {
    return MarketTradeGoods(
      symbol: map['symbol'] ?? '',
      type: map['type'] ?? '',
      tradeVolume: map['tradeVolume']?.toInt() ?? 0,
      supply: map['supply'] ?? '',
      activity: map['activity'] ?? '',
      purchasePrice: map['purchasePrice']?.toInt() ?? 0,
      sellPrice: map['sellPrice']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MarketTradeGoods.fromJson(String source) =>
      MarketTradeGoods.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MarketTradeGoods(symbol: $symbol, type: $type, tradeVolume: $tradeVolume, supply: $supply, activity: $activity, purchasePrice: $purchasePrice, sellPrice: $sellPrice)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      type,
      tradeVolume,
      supply,
      activity,
      purchasePrice,
      sellPrice,
    ];
  }
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
