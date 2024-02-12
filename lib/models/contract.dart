import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/terms.dart';

class Contract extends Equatable {
  final String id;
  final String factionSymbol;
  final String type;
  final Terms terms;
  final bool accepted;
  final bool fulfilled;
  final String expiration;
  final DateTime deadlineToAccept;

  const Contract({
    required this.id,
    required this.factionSymbol,
    required this.type,
    required this.terms,
    required this.accepted,
    required this.fulfilled,
    required this.expiration,
    required this.deadlineToAccept,
  });

  Contract copyWith({
    String? id,
    String? factionSymbol,
    String? type,
    Terms? terms,
    bool? accepted,
    bool? fulfilled,
    String? expiration,
    DateTime? deadlineToAccept,
  }) {
    return Contract(
      id: id ?? this.id,
      factionSymbol: factionSymbol ?? this.factionSymbol,
      type: type ?? this.type,
      terms: terms ?? this.terms,
      accepted: accepted ?? this.accepted,
      fulfilled: fulfilled ?? this.fulfilled,
      expiration: expiration ?? this.expiration,
      deadlineToAccept: deadlineToAccept ?? this.deadlineToAccept,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'factionSymbol': factionSymbol,
      'type': type,
      'terms': terms.toMap(),
      'accepted': accepted,
      'fulfilled': fulfilled,
      'expiration': expiration,
      'deadlineToAccept': deadlineToAccept,
    };
  }

  factory Contract.fromMap(Map<String, dynamic> map) {
    return Contract(
      id: map['id'] ?? '',
      factionSymbol: map['factionSymbol'] ?? '',
      type: map['type'] ?? '',
      terms: Terms.fromMap(map['terms'] ?? {}),
      accepted: map['accepted'] ?? false,
      fulfilled: map['fulfilled'] ?? false,
      expiration: map['expiration'] ?? '',
      deadlineToAccept: DateTime.parse(map['deadlineToAccept'] ?? ''),
    );
  }

  String toJson() => json.encode(toMap());

  factory Contract.fromJson(String source) =>
      Contract.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Contract(id: $id, factionSymbol: $factionSymbol, type: $type, terms: $terms, accepted: $accepted, fulfilled: $fulfilled, expiration: $expiration, deadlineToAccept: $deadlineToAccept)';
  }

  @override
  List<Object> get props {
    return [
      id,
      factionSymbol,
      type,
      terms,
      accepted,
      fulfilled,
      expiration,
      deadlineToAccept,
    ];
  }
}
