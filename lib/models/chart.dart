import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart.freezed.dart';
part 'chart.g.dart';

@freezed
class Chart with _$Chart {
  const factory Chart({
    String? waypointSymbol,
    String? submittedBy,
    String? submittedOn,
  }) = _Chart;

  factory Chart.fromJson(Map<String, dynamic> json) => _$ChartFromJson(json);
}
