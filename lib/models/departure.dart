import 'package:freezed_annotation/freezed_annotation.dart';

part 'departure.freezed.dart';
part 'departure.g.dart';

@freezed
class Departure with _$Departure {
  const factory Departure({
    @Default('') String symbol,
    @Default('') String type,
    @Default('') String systemSymbol,
    @Default(0) int x,
    @Default(0) int y,
  }) = _Departure;

  factory Departure.fromJson(Map<String, dynamic> json) => _$DepartureFromJson(json);
}
