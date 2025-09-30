// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_transaction.freezed.dart';
part 'market_transaction.g.dart';

@freezed
class MarketTransaction with _$MarketTransaction {
  const factory MarketTransaction({
    @Default('') String waypointSymbol,
    @Default('') String shipSymbol,
    @Default('') String tradeSymbol,
    @Default('') String type,
    @Default(0) int units,
    @Default(0) int pricePerUnit,
    @Default(0) int totalPrice,
    @Default('') String timestamp,
  }) = _MarketTransaction;

  factory MarketTransaction.fromJson(Map<String, dynamic> json) => _$MarketTransactionFromJson(json);
}

enum MarketTransactionType { PURCHASE, SELL }
