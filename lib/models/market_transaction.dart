// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:equatable/equatable.dart';

class MarketTransaction extends Equatable {
  final String waypointSymbol;
  final String shipSymbol;
  final String tradeSymbol;
  final String type;
  final int units;
  final int pricePerUnit;
  final int totalPrice;
  final String timestamp;
  const MarketTransaction({
    required this.waypointSymbol,
    required this.shipSymbol,
    required this.tradeSymbol,
    required this.type,
    required this.units,
    required this.pricePerUnit,
    required this.totalPrice,
    required this.timestamp,
  });

  MarketTransaction copyWith({
    String? waypointSymbol,
    String? shipSymbol,
    String? tradeSymbol,
    String? type,
    int? units,
    int? pricePerUnit,
    int? totalPrice,
    String? timestamp,
  }) {
    return MarketTransaction(
      waypointSymbol: waypointSymbol ?? this.waypointSymbol,
      shipSymbol: shipSymbol ?? this.shipSymbol,
      tradeSymbol: tradeSymbol ?? this.tradeSymbol,
      type: type ?? this.type,
      units: units ?? this.units,
      pricePerUnit: pricePerUnit ?? this.pricePerUnit,
      totalPrice: totalPrice ?? this.totalPrice,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'waypointSymbol': waypointSymbol,
      'shipSymbol': shipSymbol,
      'tradeSymbol': tradeSymbol,
      'type': type,
      'units': units,
      'pricePerUnit': pricePerUnit,
      'totalPrice': totalPrice,
      'timestamp': timestamp,
    };
  }

  factory MarketTransaction.fromMap(Map<String, dynamic> map) {
    return MarketTransaction(
      waypointSymbol: map['waypointSymbol'] ?? '',
      shipSymbol: map['shipSymbol'] ?? '',
      tradeSymbol: map['tradeSymbol'] ?? '',
      type: map['type'] ?? '',
      units: map['units']?.toInt() ?? 0,
      pricePerUnit: map['pricePerUnit']?.toInt() ?? 0,
      totalPrice: map['totalPrice']?.toInt() ?? 0,
      timestamp: map['timestamp'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MarketTransaction.fromJson(String source) =>
      MarketTransaction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MarketTransaction(waypointSymbol: $waypointSymbol, shipSymbol: $shipSymbol, tradeSymbol: $tradeSymbol, type: $type, units: $units, pricePerUnit: $pricePerUnit, totalPrice: $totalPrice, timestamp: $timestamp)';
  }

  @override
  List<Object> get props {
    return [
      waypointSymbol,
      shipSymbol,
      tradeSymbol,
      type,
      units,
      pricePerUnit,
      totalPrice,
      timestamp,
    ];
  }
}

enum MarketTransactionType { PURCHASE, SELL }
