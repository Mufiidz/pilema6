import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PilemTextStyle {
  static TextStyle normal = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle medium = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static TextStyle title = const TextStyle(
    color: Colors.white,
    fontSize: 45,
    fontWeight: FontWeight.w800,
  );
}

extension TextStyleExt on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get lato => GoogleFonts.lato(textStyle: this);
  TextStyle get firaSans => GoogleFonts.firaSans(textStyle: this);
  TextStyle get firaSansBold => firaSans.bold;
  TextStyle get latoBold => lato.bold;
}
