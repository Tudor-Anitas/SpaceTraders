import 'package:freezed_annotation/freezed_annotation.dart';

part 'extraction_yield.freezed.dart';
part 'extraction_yield.g.dart';

@freezed
class ExtractionYield with _$ExtractionYield {
  const factory ExtractionYield({
    @Default('') String symbol,
    @Default(0) int units,
  }) = _ExtractionYield;

  factory ExtractionYield.fromJson(Map<String, dynamic> json) => _$ExtractionYieldFromJson(json);
}
