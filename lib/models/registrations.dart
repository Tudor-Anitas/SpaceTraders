import 'dart:convert';

import 'package:equatable/equatable.dart';

class Registration extends Equatable {
  final String name;
  final String factionSymbol;
  final String role;
  const Registration({
    required this.name,
    required this.factionSymbol,
    required this.role,
  });

  Registration copyWith({
    String? name,
    String? factionSymbol,
    String? role,
  }) {
    return Registration(
      name: name ?? this.name,
      factionSymbol: factionSymbol ?? this.factionSymbol,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'factionSymbol': factionSymbol,
      'role': role,
    };
  }

  factory Registration.fromMap(Map<String, dynamic> map) {
    return Registration(
      name: map['name'] ?? '',
      factionSymbol: map['factionSymbol'] ?? '',
      role: map['role'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Registration.fromJson(String source) =>
      Registration.fromMap(json.decode(source));

  @override
  String toString() =>
      'name: $name\nfactionSymbol: $factionSymbol\nrole: $role';

  @override
  List<Object> get props => [name, factionSymbol, role];
}
