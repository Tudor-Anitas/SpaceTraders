import 'dart:convert';

import 'package:equatable/equatable.dart';

class Departure extends Equatable {
  final String symbol;
  final String type;
  final String systemSymbol;
  final int x;
  final int y;
  const Departure({
    required this.symbol,
    required this.type,
    required this.systemSymbol,
    required this.x,
    required this.y,
  });

  Departure copyWith({
    String? symbol,
    String? type,
    String? systemSymbol,
    int? x,
    int? y,
  }) {
    return Departure(
      symbol: symbol ?? this.symbol,
      type: type ?? this.type,
      systemSymbol: systemSymbol ?? this.systemSymbol,
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'type': type,
      'systemSymbol': systemSymbol,
      'x': x,
      'y': y,
    };
  }

  factory Departure.fromMap(Map<String, dynamic> map) {
    return Departure(
      symbol: map['symbol'] ?? '',
      type: map['type'] ?? '',
      systemSymbol: map['systemSymbol'] ?? '',
      x: map['x']?.toInt() ?? 0,
      y: map['y']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Departure.fromJson(String source) =>
      Departure.fromMap(json.decode(source));

  @override
  String toString() {
    return 'symbol: $symbol\ntype: $type\nsystemSymbol: $systemSymbol\nx: $x\ny: $y)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      type,
      systemSymbol,
      x,
      y,
    ];
  }
}
