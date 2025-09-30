import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/terms.dart';

part 'contract.freezed.dart';
part 'contract.g.dart';

@freezed
class Contract with _$Contract {
  const factory Contract({
    @Default('') String id,
    @Default('') String factionSymbol,
    @Default('') String type,
    required Terms terms,
    @Default(false) bool accepted,
    @Default(false) bool fulfilled,
    required DateTime expiration,
    required DateTime deadlineToAccept,
  }) = _Contract;

  factory Contract.fromJson(Map<String, dynamic> json) => _$ContractFromJson(json);
}
