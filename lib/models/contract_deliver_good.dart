import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_deliver_good.freezed.dart';
part 'contract_deliver_good.g.dart';

@freezed
class ContractDeliverGood with _$ContractDeliverGood {
  const factory ContractDeliverGood({
    @Default('') String tradeSymbol,
    @Default('') String destinationSymbol,
    @Default(0) int unitsRequired,
    @Default(0) int unitsFulfilled,
  }) = _ContractDeliverGood;

  factory ContractDeliverGood.fromJson(Map<String, dynamic> json) => _$ContractDeliverGoodFromJson(json);
}
