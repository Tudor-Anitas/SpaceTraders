import 'dart:convert';

import 'package:equatable/equatable.dart';

class Requirements extends Equatable {
  final int power;
  final int crew;
  final int slots;
  const Requirements({
    required this.power,
    required this.crew,
    required this.slots,
  });

  Requirements copyWith({
    int? power,
    int? crew,
    int? slots,
  }) {
    return Requirements(
      power: power ?? this.power,
      crew: crew ?? this.crew,
      slots: slots ?? this.slots,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'power': power,
      'crew': crew,
      'slots': slots,
    };
  }

  factory Requirements.fromMap(Map<String, dynamic> map) {
    return Requirements(
      power: map['power']?.toInt() ?? 0,
      crew: map['crew']?.toInt() ?? 0,
      slots: map['slots']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Requirements.fromJson(String source) =>
      Requirements.fromMap(json.decode(source));

  @override
  String toString() => 'power: $power\ncrew: $crew\nslots: $slots)';

  @override
  List<Object> get props => [power, crew, slots];
}
