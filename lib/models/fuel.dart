import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/consumed.dart';

class Fuel extends Equatable {
  final int current;
  final int capacity;
  final Consumed consumed;
  const Fuel({
    required this.current,
    required this.capacity,
    required this.consumed,
  });

  Fuel copyWith({
    int? current,
    int? capacity,
    Consumed? consumed,
  }) {
    return Fuel(
      current: current ?? this.current,
      capacity: capacity ?? this.capacity,
      consumed: consumed ?? this.consumed,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'current': current,
      'capacity': capacity,
      'consumed': consumed.toMap(),
    };
  }

  factory Fuel.fromMap(Map<String, dynamic> map) {
    return Fuel(
      current: map['current']?.toInt() ?? 0,
      capacity: map['capacity']?.toInt() ?? 0,
      consumed: Consumed.fromMap(map['consumed'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Fuel.fromJson(String source) => Fuel.fromMap(json.decode(source));

  @override
  String toString() =>
      'current: $current\ncapacity: $capacity\nconsumed: $consumed';

  @override
  List<Object> get props => [current, capacity, consumed];
}
