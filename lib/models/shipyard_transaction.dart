import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipyard_transaction.freezed.dart';
part 'shipyard_transaction.g.dart';

@freezed
class ShipyardTransaction with _$ShipyardTransaction {
  const factory ShipyardTransaction({
    @Default('') String waypointSymbol,
    @Default('') String shipSymbol,
    @Default(0) int price,
    @Default('') String agentSymbol,
    @Default('') String timestamp,
  }) = _ShipyardTransaction;

  factory ShipyardTransaction.fromJson(Map<String, dynamic> json) => _$ShipyardTransactionFromJson(json);
}
