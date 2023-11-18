import 'dart:convert';

import 'package:equatable/equatable.dart';

class Payment extends Equatable {
  final int onAccepted;
  final int onFulfilled;
  
  const Payment({
    required this.onAccepted,
    required this.onFulfilled,
  });

  Payment copyWith({
    int? onAccepted,
    int? onFulfilled,
  }) {
    return Payment(
      onAccepted: onAccepted ?? this.onAccepted,
      onFulfilled: onFulfilled ?? this.onFulfilled,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'onAccepted': onAccepted,
      'onFulfilled': onFulfilled,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      onAccepted: map['onAccepted']?.toInt() ?? 0,
      onFulfilled: map['onFulfilled']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Payment.fromJson(String source) =>
      Payment.fromMap(json.decode(source));

  @override
  String toString() =>
      'onAccepted: $onAccepted\nonFulfilled: $onFulfilled';

  @override
  List<Object> get props => [onAccepted, onFulfilled];
}
