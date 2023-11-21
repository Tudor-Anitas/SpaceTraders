import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/faction_trait.dart';

class Faction extends Equatable {
  final String symbol;
  final String name;
  final String description;
  final String headquarters;
  final List<FactionTrait> traits;
  final bool isRecruiting;
  const Faction({
    required this.symbol,
    required this.name,
    required this.description,
    required this.headquarters,
    required this.traits,
    required this.isRecruiting,
  });

  Faction copyWith({
    String? symbol,
    String? name,
    String? description,
    String? headquarters,
    List<FactionTrait>? traits,
    bool? isRecruiting,
  }) {
    return Faction(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      description: description ?? this.description,
      headquarters: headquarters ?? this.headquarters,
      traits: traits ?? this.traits,
      isRecruiting: isRecruiting ?? this.isRecruiting,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'description': description,
      'headquarters': headquarters,
      'traits': traits.map((x) => x.toMap()).toList(),
      'isRecruiting': isRecruiting,
    };
  }

  factory Faction.fromMap(Map<String, dynamic> map) {
    return Faction(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      headquarters: map['headquarters'] ?? '',
      traits: List<FactionTrait>.from(
          map['traits']?.map((x) => FactionTrait.fromMap(x))),
      isRecruiting: map['isRecruiting'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Faction.fromJson(String source) =>
      Faction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Faction(symbol: $symbol, name: $name, description: $description, headquarters: $headquarters, traits: $traits, isRecruiting: $isRecruiting)';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      name,
      description,
      headquarters,
      traits,
      isRecruiting,
    ];
  }
}
