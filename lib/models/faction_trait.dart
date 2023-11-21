import 'dart:convert';

import 'package:equatable/equatable.dart';

class FactionTrait extends Equatable {
  final String symbol;
  final String name;
  final String description;
  const FactionTrait({
    required this.symbol,
    required this.name,
    required this.description,
  });

  FactionTrait copyWith({
    String? symbol,
    String? name,
    String? description,
  }) {
    return FactionTrait(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'description': description,
    };
  }

  factory FactionTrait.fromMap(Map<String, dynamic> map) {
    return FactionTrait(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FactionTrait.fromJson(String source) =>
      FactionTrait.fromMap(json.decode(source));

  @override
  String toString() =>
      'FactionTrait(symbol: $symbol, name: $name, description: $description)';

  @override
  List<Object> get props => [symbol, name, description];
}
