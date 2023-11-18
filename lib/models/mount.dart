import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/requirements.dart';

class Mount extends Equatable {
  final String symbol;
  final String name;
  final String description;
  final int strength;
  final List<String> deposits;
  final Requirements requirements;
  const Mount({
    required this.symbol,
    required this.name,
    required this.description,
    required this.strength,
    required this.deposits,
    required this.requirements,
  });

  Mount copyWith({
    String? symbol,
    String? name,
    String? description,
    int? strength,
    List<String>? deposits,
    Requirements? requirements,
  }) {
    return Mount(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      description: description ?? this.description,
      strength: strength ?? this.strength,
      deposits: deposits ?? this.deposits,
      requirements: requirements ?? this.requirements,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
      'name': name,
      'description': description,
      'strength': strength,
      'deposits': deposits,
      'requirements': requirements.toMap(),
    };
  }

  factory Mount.fromMap(Map<String, dynamic> map) {
    return Mount(
      symbol: map['symbol'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      strength: map['strength']?.toInt() ?? 0,
      deposits:
          map['deposits'] != null ? List<String>.from(map['deposits']) : [],
      requirements: Requirements.fromMap(map['requirements']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Mount.fromJson(String source) => Mount.fromMap(json.decode(source));

  @override
  String toString() {
    return 'symbol: $symbol\nname: $name\ndescription: $description\nstrength: $strength\ndeposits: $deposits\nrequirements: $requirements';
  }

  @override
  List<Object> get props {
    return [
      symbol,
      name,
      description,
      strength,
      deposits,
      requirements,
    ];
  }
}
