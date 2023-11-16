import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class StateMessage extends Equatable {
  final String text;
  final Key key;

  const StateMessage({required this.text, required this.key});

  @override
  List<Object?> get props => [text, key];
}

enum States { myCharacter }
