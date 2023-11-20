import 'dart:convert';

import 'package:equatable/equatable.dart';

class WaypointOrbital extends Equatable {
  final String symbol;
  const WaypointOrbital({
    required this.symbol,
  });

  WaypointOrbital copyWith({
    String? symbol,
  }) {
    return WaypointOrbital(
      symbol: symbol ?? this.symbol,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
    };
  }

  factory WaypointOrbital.fromMap(Map<String, dynamic> map) {
    return WaypointOrbital(
      symbol: map['symbol'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WaypointOrbital.fromJson(String source) =>
      WaypointOrbital.fromMap(json.decode(source));

  @override
  String toString() => 'WaypointOrbital(symbol: $symbol)';

  @override
  List<Object> get props => [symbol];
}
