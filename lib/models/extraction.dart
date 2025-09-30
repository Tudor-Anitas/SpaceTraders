import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/extraction_yield.dart';

part 'extraction.freezed.dart';
part 'extraction.g.dart';

@freezed
class Extraction with _$Extraction {
  const factory Extraction({
    @Default('') String shipSymbol,
    @Default(ExtractionYield()) ExtractionYield extractionYield,
  }) = _Extraction;

  factory Extraction.fromJson(Map<String, dynamic> json) => _$ExtractionFromJson(json);
}
