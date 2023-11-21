import 'dart:convert';

import 'package:equatable/equatable.dart';

class JumpGate extends Equatable {
  final List<String> connections;
  const JumpGate({
    required this.connections,
  });

  JumpGate copyWith({
    List<String>? connections,
  }) {
    return JumpGate(
      connections: connections ?? this.connections,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'connections': connections,
    };
  }

  factory JumpGate.fromMap(Map<String, dynamic> map) {
    return JumpGate(
      connections: List<String>.from(map['connections']),
    );
  }

  String toJson() => json.encode(toMap());

  factory JumpGate.fromJson(String source) =>
      JumpGate.fromMap(json.decode(source));

  @override
  String toString() => 'JumpGate(connections: $connections)';

  @override
  List<Object> get props => [connections];
}
