import 'dart:convert';

import 'package:equatable/equatable.dart';

class SurveyDeposit extends Equatable {
  final String symbol;
  const SurveyDeposit({
    required this.symbol,
  });

  SurveyDeposit copyWith({
    String? symbol,
  }) {
    return SurveyDeposit(
      symbol: symbol ?? this.symbol,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'symbol': symbol,
    };
  }

  factory SurveyDeposit.fromMap(Map<String, dynamic> map) {
    return SurveyDeposit(
      symbol: map['symbol'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SurveyDeposit.fromJson(String source) =>
      SurveyDeposit.fromMap(json.decode(source));

  @override
  String toString() => 'SurveyDeposit(symbol: $symbol)';

  @override
  List<Object> get props => [symbol];
}
