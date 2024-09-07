import 'package:flutter/material.dart';

bool isLeftToRightDrag(DragUpdateDetails details) {
  print(details.delta.direction);
  return details.delta.direction <= 0;
}
