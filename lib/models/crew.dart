import 'dart:convert';

import 'package:equatable/equatable.dart';

class Crew extends Equatable {
  final int current;
  final int requiredCrew;
  final int capacity;
  final String rotation;
  final int morale;
  final int wages;
  const Crew({
    required this.current,
    required this.requiredCrew,
    required this.capacity,
    required this.rotation,
    required this.morale,
    required this.wages,
  });

  Crew copyWith({
    int? current,
    int? requiredCrew,
    int? capacity,
    String? rotation,
    int? morale,
    int? wages,
  }) {
    return Crew(
      current: current ?? this.current,
      requiredCrew: requiredCrew ?? this.requiredCrew,
      capacity: capacity ?? this.capacity,
      rotation: rotation ?? this.rotation,
      morale: morale ?? this.morale,
      wages: wages ?? this.wages,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'current': current,
      'required': requiredCrew,
      'capacity': capacity,
      'rotation': rotation,
      'morale': morale,
      'wages': wages,
    };
  }

  factory Crew.fromMap(Map<String, dynamic> map) {
    return Crew(
      current: map['current']?.toInt() ?? 0,
      requiredCrew: map['required']?.toInt() ?? 0,
      capacity: map['capacity']?.toInt() ?? 0,
      rotation: map['rotation'] ?? '',
      morale: map['morale']?.toInt() ?? 0,
      wages: map['wages']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Crew.fromJson(String source) => Crew.fromMap(json.decode(source));

  @override
  String toString() {
    return 'current: $current\nrequiredCrew: $requiredCrew\ncapacity: $capacity\nrotation: $rotation\nmorale: $morale\nwages: $wages';
  }

  @override
  List<Object> get props {
    return [
      current,
      requiredCrew,
      capacity,
      rotation,
      morale,
      wages,
    ];
  }
}
