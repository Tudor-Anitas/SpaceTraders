import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/contract_deliver_good.dart';
import 'package:space_traders/models/payment.dart';

part 'terms.freezed.dart';
part 'terms.g.dart';

@freezed
class Terms with _$Terms {
  const factory Terms({
    required DateTime deadline,
    @Default(Payment()) Payment payment,
    @Default([]) List<ContractDeliverGood> deliver,
  }) = _Terms;

  factory Terms.fromJson(Map<String, dynamic> json) => _$TermsFromJson(json);
}
