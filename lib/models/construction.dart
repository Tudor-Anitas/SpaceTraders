import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/construction_material.dart';

class Construction extends Equatable {
  final String symbol;
  final List<ConstructionMaterial> materials;
  final bool isComplete;
  const Construction({
    required this.symbol,
    required this.materials,
    required this.isComplete,
  });

  Construction copyWith({
    String? symbol,
    List<ConstructionMaterial>? materials,
    bool? isComplete,
  }) {
    return Construction(
      symbol: symbol ?? this.symbol,
      materials: materials ?? this.materials,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'materials': materials.map((x) => x.toMap()).toList(),
      'isComplete': isComplete,
    };
  }

  factory Construction.fromMap(Map<String, dynamic> map) {
    return Construction(
      symbol: map['symbol'] ?? '',
      materials: List<ConstructionMaterial>.from(
          map['materials']?.map((x) => ConstructionMaterial.fromMap(x))),
      isComplete: map['isComplete'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Construction.fromJson(String source) =>
      Construction.fromMap(json.decode(source));

  @override
  String toString() =>
      'Construction(symbol: $symbol, materials: $materials, isComplete: $isComplete)';

  @override
  List<Object> get props => [symbol, materials, isComplete];
}
