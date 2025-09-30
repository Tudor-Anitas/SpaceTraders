import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';
part 'destination.g.dart';

@freezed
class Destination with _$Destination {
  const factory Destination({
    @Default('') String symbol,
    @Default('') String type,
    @Default('') String systemSymbol,
    @Default(0) int x,
    @Default(0) int y,
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);
}
