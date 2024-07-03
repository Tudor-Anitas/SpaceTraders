import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/extraction_yield.dart';

class Extraction extends Equatable {
  final String shipSymbol;
  final ExtractionYield extractionYield;
  const Extraction({
    required this.shipSymbol,
    required this.extractionYield,
  });

  Extraction copyWith({
    String? shipSymbol,
    ExtractionYield? extractionYield,
  }) {
    return Extraction(
      shipSymbol: shipSymbol ?? this.shipSymbol,
      extractionYield: extractionYield ?? this.extractionYield,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'shipSymbol': shipSymbol,
      'yield': extractionYield.toMap(),
    };
  }

  factory Extraction.fromMap(Map<String, dynamic> map) {
    return Extraction(
      shipSymbol: map['shipSymbol'] ?? '',
      extractionYield: ExtractionYield.fromMap(map['yield'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Extraction.fromJson(String source) =>
      Extraction.fromMap(json.decode(source));

  @override
  String toString() =>
      'Extraction(shipSymbol: $shipSymbol, extractionYield: $extractionYield)';

  @override
  List<Object> get props => [shipSymbol, extractionYield];
}
