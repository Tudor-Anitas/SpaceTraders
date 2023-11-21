import 'dart:convert';

import 'package:equatable/equatable.dart';

class ShipyardCrew extends Equatable {
  final int requiredCrew;
  final int capacity;
  const ShipyardCrew({
    required this.requiredCrew,
    required this.capacity,
  });

  ShipyardCrew copyWith({
    int? requiredCrew,
    int? capacity,
  }) {
    return ShipyardCrew(
      requiredCrew: requiredCrew ?? this.requiredCrew,
      capacity: capacity ?? this.capacity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'required': requiredCrew,
      'capacity': capacity,
    };
  }

  factory ShipyardCrew.fromMap(Map<String, dynamic> map) {
    return ShipyardCrew(
      requiredCrew: map['required']?.toInt() ?? 0,
      capacity: map['capacity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShipyardCrew.fromJson(String source) => ShipyardCrew.fromMap(json.decode(source));

  @override
  String toString() => 'ShipyardCrew(required: $requiredCrew, capacity: $capacity)';

  @override
  List<Object> get props => [requiredCrew, capacity];
}
