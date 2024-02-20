import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/departure.dart';
import 'package:space_traders/models/destination.dart';
import 'package:space_traders/models/origin.dart';

class Route extends Equatable {
  final Destination destination;
  final Departure departure;
  final Origin origin;
  final String departureTime;
  final String arrival;
  const Route({
    required this.destination,
    required this.departure,
    required this.origin,
    required this.departureTime,
    required this.arrival,
  });

  Route copyWith({
    Destination? destination,
    Departure? departure,
    Origin? origin,
    String? departureTime,
    String? arrival,
  }) {
    return Route(
      destination: destination ?? this.destination,
      departure: departure ?? this.departure,
      origin: origin ?? this.origin,
      departureTime: departureTime ?? this.departureTime,
      arrival: arrival ?? this.arrival,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'destination': destination.toMap(),
      'departure': departure.toMap(),
      'origin': origin.toMap(),
      'departureTime': departureTime,
      'arrival': arrival,
    };
  }

  factory Route.fromMap(Map<String, dynamic> map) {
    return Route(
      destination: Destination.fromMap(map['destination'] ?? {}),
      departure: Departure.fromMap(map['departure'] ?? {}),
      origin: Origin.fromMap(map['origin'] ?? {}),
      departureTime: map['departureTime'] ?? '',
      arrival: map['arrival'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Route.fromJson(String source) => Route.fromMap(json.decode(source));

  @override
  String toString() {
    return 'destination: $destination\ndeparture: $departure\norigin: $origin\ndepartureTime: $departureTime\narrival: $arrival';
  }

  @override
  List<Object> get props {
    return [
      destination,
      departure,
      origin,
      departureTime,
      arrival,
    ];
  }
}
