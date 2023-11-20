import 'dart:convert';

import 'package:equatable/equatable.dart';

class Chart extends Equatable {
  final String? waypointSymbol;
  final String? submittedBy;
  final String? submittedOn;
  const Chart({
    required this.waypointSymbol,
    required this.submittedBy,
    required this.submittedOn,
  });

  Chart copyWith({
    String? waypointSymbol,
    String? submittedBy,
    String? submittedOn,
  }) {
    return Chart(
      waypointSymbol: waypointSymbol ?? this.waypointSymbol,
      submittedBy: submittedBy ?? this.submittedBy,
      submittedOn: submittedOn ?? this.submittedOn,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'waypointSymbol': waypointSymbol,
      'submittedBy': submittedBy,
      'submittedOn': submittedOn,
    };
  }

  factory Chart.fromMap(Map<String, dynamic> map) {
    return Chart(
      waypointSymbol: map['waypointSymbol'],
      submittedBy: map['submittedBy'],
      submittedOn: map['submittedOn'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Chart.fromJson(String source) => Chart.fromMap(json.decode(source));

  @override
  String toString() =>
      'Chart(waypointSymbol: $waypointSymbol, submittedBy: $submittedBy, submittedOn: $submittedOn)';

  @override
  List<Object> get props => [waypointSymbol!, submittedBy!, submittedOn!];
}
