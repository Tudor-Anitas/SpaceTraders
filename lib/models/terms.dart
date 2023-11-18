import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:space_traders/models/cargo.dart';
import 'package:space_traders/models/payment.dart';

class Terms extends Equatable {
  final String deadline;
  final Payment payment;
  final List<Cargo> deliver;

  const Terms({
    required this.deadline,
    required this.payment,
    required this.deliver,
  });

  Terms copyWith({
    String? deadline,
    Payment? payment,
    List<Cargo>? deliver,
  }) {
    return Terms(
      deadline: deadline ?? this.deadline,
      payment: payment ?? this.payment,
      deliver: deliver ?? this.deliver,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'deadline': deadline,
      'payment': payment.toMap(),
      'deliver': deliver.map((x) => x.toMap()).toList(),
    };
  }

  factory Terms.fromMap(Map<String, dynamic> map) {
    return Terms(
      deadline: map['deadline'] ?? '',
      payment: Payment.fromMap(map['payment']),
      deliver: List<Cargo>.from(map['deliver']?.map((x) => Cargo.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Terms.fromJson(String source) => Terms.fromMap(json.decode(source));

  @override
  String toString() => 'deadline: $deadline\npayment: $payment\ndeliver: $deliver';

  @override
  List<Object> get props => [deadline, payment, deliver];
}
