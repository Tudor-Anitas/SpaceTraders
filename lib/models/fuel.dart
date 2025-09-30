import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/consumed.dart';

part 'fuel.freezed.dart';
part 'fuel.g.dart';

@freezed
class Fuel with _$Fuel {
  const factory Fuel({
    @Default(0) int current,
    @Default(0) int capacity,
    @Default(Consumed()) Consumed consumed,
  }) = _Fuel;

  factory Fuel.fromJson(Map<String, dynamic> json) => _$FuelFromJson(json);
}
