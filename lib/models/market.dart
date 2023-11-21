import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:space_traders/models/exchange.dart';
import 'package:space_traders/models/export.dart';
import 'package:space_traders/models/import.dart';
import 'package:space_traders/models/market_trade_goods.dart';
import 'package:space_traders/models/market_transaction.dart';

class Market extends Equatable {
  final String symbol;
  final List<Export> exports;
  final List<Import> imports;
  final List<Exchange> exchange;
  final List<MarketTransaction> transactions;
  final List<MarketTradeGoods> tradeGoods;
  const Market({
    required this.symbol,
    required this.exports,
    required this.imports,
    required this.exchange,
    required this.transactions,
    required this.tradeGoods,
  });

  Market copyWith({
    String? symbol,
    List<Export>? exports,
    List<Import>? imports,
    List<Exchange>? exchange,
    List<MarketTransaction>? transactions,
    List<MarketTradeGoods>? tradeGoods,
  }) {
    return Market(
      symbol: symbol ?? this.symbol,
      exports: exports ?? this.exports,
      imports: imports ?? this.imports,
      exchange: exchange ?? this.exchange,
      transactions: transactions ?? this.transactions,
      tradeGoods: tradeGoods ?? this.tradeGoods,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'exports': exports.map((x) => x.toMap()).toList(),
      'imports': imports.map((x) => x.toMap()).toList(),
      'exchange': exchange.map((x) => x.toMap()).toList(),
      'transactions': transactions.map((x) => x.toMap()).toList(),
      'tradeGoods': tradeGoods.map((x) => x.toMap()).toList(),
    };
  }

  factory Market.fromMap(Map<String, dynamic> map) {
    return Market(
      symbol: map['symbol'] ?? '',
      exports: List<Export>.from(map['exports']?.map((x) => Export.fromMap(x))),
      imports: List<Import>.from(map['imports']?.map((x) => Import.fromMap(x))),
      exchange:
          List<Exchange>.from(map['exchange']?.map((x) => Exchange.fromMap(x))),
      transactions: List<MarketTransaction>.from(
          map['transactions']?.map((x) => MarketTransaction.fromMap(x))),
      tradeGoods: List<MarketTradeGoods>.from(
          map['tradeGoods']?.map((x) => MarketTradeGoods.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Market.fromJson(String source) => Market.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Market(symbol: $symbol, exports: $exports, imports: $imports, exchange: $exchange, transactions: $transactions, tradeGoods: $tradeGoods)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      exports,
      imports,
      exchange,
      transactions,
      tradeGoods,
    ];
  }
}
