import 'package:freezed_annotation/freezed_annotation.dart';

part 'consumed.freezed.dart';
part 'consumed.g.dart';

@freezed
class Consumed with _$Consumed {
  const factory Consumed({
    @Default(0) int amount,
    @Default('') String timestamp,
  }) = _Consumed;

  factory Consumed.fromJson(Map<String, dynamic> json) => _$ConsumedFromJson(json);
}
