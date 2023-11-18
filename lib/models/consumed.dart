import 'dart:convert';

import 'package:equatable/equatable.dart';

class Consumed extends Equatable {
  final int amount;
  final String timestamp;
  const Consumed({
    required this.amount,
    required this.timestamp,
  });

  Consumed copyWith({
    int? amount,
    String? timestamp,
  }) {
    return Consumed(
      amount: amount ?? this.amount,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'timestamp': timestamp,
    };
  }

  factory Consumed.fromMap(Map<String, dynamic> map) {
    return Consumed(
      amount: map['amount']?.toInt() ?? 0,
      timestamp: map['timestamp'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Consumed.fromJson(String source) =>
      Consumed.fromMap(json.decode(source));

  @override
  String toString() => 'amount: $amount\ntimestamp: $timestamp';

  @override
  List<Object> get props => [amount, timestamp];
}
