import 'package:freezed_annotation/freezed_annotation.dart';

part 'siphon_yield.freezed.dart';
part 'siphon_yield.g.dart';

@freezed
class SiphonYield with _$SiphonYield {
  const factory SiphonYield({
    @Default('') String symbol,
    @Default(0) int units,
  }) = _SiphonYield;

  factory SiphonYield.fromJson(Map<String, dynamic> json) => _$SiphonYieldFromJson(json);
}
