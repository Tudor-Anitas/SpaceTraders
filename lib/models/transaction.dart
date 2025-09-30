import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    @Default('') String waypointSymbol,
    @Default('') String shipSymbol,
    @Default(0) int price,
    @Default('') String agentSymbol,
    @Default('') String timestamp,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}
