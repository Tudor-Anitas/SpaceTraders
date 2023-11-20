import 'dart:convert';

import 'package:equatable/equatable.dart';

class WaypointFaction extends Equatable {
  final String symbol;
  const WaypointFaction({
    required this.symbol,
  });

  WaypointFaction copyWith({
    String? symbol,
  }) {
    return WaypointFaction(
      symbol: symbol ?? this.symbol,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
    };
  }

  factory WaypointFaction.fromMap(Map<String, dynamic> map) {
    return WaypointFaction(
      symbol: map['symbol'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WaypointFaction.fromJson(String source) =>
      WaypointFaction.fromMap(json.decode(source));

  @override
  String toString() => 'WaypointFaction(symbol: $symbol)';

  @override
  List<Object> get props => [symbol];
}
