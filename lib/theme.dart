import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData() {
  var themeData = ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.blueAccent,
      brightness: Brightness.dark);

  return themeData.copyWith(
      textTheme: GoogleFonts.silkscreenTextTheme(themeData.textTheme));
}
