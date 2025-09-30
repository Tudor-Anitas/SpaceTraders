import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/destination.dart';
import 'package:space_traders/models/origin.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route with _$Route {
  const factory Route({
    required Origin origin,
    required Destination destination,
    required String departureTime,
    required String arrival,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}