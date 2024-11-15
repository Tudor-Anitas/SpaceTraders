import 'package:flutter/material.dart';

bool isLeftToRightDrag(DragUpdateDetails details) {
  return details.delta.direction <= 0;
}
