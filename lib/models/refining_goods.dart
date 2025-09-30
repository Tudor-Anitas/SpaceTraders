import 'package:freezed_annotation/freezed_annotation.dart';

part 'refining_goods.freezed.dart';
part 'refining_goods.g.dart';

@freezed
class RefiningGoods with _$RefiningGoods {
  const factory RefiningGoods({
    @Default('') String tradeSymbol,
    @Default(0) int units,
  }) = _RefiningGoods;

  factory RefiningGoods.fromJson(Map<String, dynamic> json) => _$RefiningGoodsFromJson(json);
}
