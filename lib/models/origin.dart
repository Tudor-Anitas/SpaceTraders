import 'package:freezed_annotation/freezed_annotation.dart';

part 'origin.freezed.dart';
part 'origin.g.dart';

@freezed
class Origin with _$Origin {
  const factory Origin({
    @Default('') String symbol,
    @Default('') String type,
    @Default('') String systemSymbol,
    @Default(0) int x,
    @Default(0) int y,
  }) = _Origin;

  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);
}
