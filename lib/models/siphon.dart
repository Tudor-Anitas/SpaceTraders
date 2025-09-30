import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/siphon_yield.dart';

part 'siphon.freezed.dart';
part 'siphon.g.dart';

@freezed
class Siphon with _$Siphon {
  const factory Siphon({
    @Default('') String shipSymbol,
    @Default(SiphonYield()) SiphonYield siphonYield,
  }) = _Siphon;

  factory Siphon.fromJson(Map<String, dynamic> json) => _$SiphonFromJson(json);
}
