import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/siphon_yield.dart';

class Siphon extends Equatable {
  final String shipSymbol;
  final SiphonYield siphonYield;
  const Siphon({
    required this.shipSymbol,
    required this.siphonYield,
  });

  Siphon copyWith({
    String? shipSymbol,
    SiphonYield? siphonYield,
  }) {
    return Siphon(
      shipSymbol: shipSymbol ?? this.shipSymbol,
      siphonYield: siphonYield ?? this.siphonYield,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'shipSymbol': shipSymbol,
      'yield': siphonYield.toMap(),
    };
  }

  factory Siphon.fromMap(Map<String, dynamic> map) {
    return Siphon(
      shipSymbol: map['shipSymbol'] ?? '',
      siphonYield: SiphonYield.fromMap(map['yield']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Siphon.fromJson(String source) => Siphon.fromMap(json.decode(source));

  @override
  String toString() =>
      'Siphon(shipSymbol: $shipSymbol, siphonYield: $siphonYield)';

  @override
  List<Object> get props => [shipSymbol, siphonYield];
}
