import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textTheme {
  textTheme._();

  static var headline1 = GoogleFonts.oxygen(
    textStyle: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w500,
    ),
  );

  static var headline2 = GoogleFonts.oxygen(
    textStyle: TextStyle(
      fontSize: 12,
    ),
  );

  static var buttontext = GoogleFonts.oxygen(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w200,
    ),
  );

  static var customshapeTextStyle1 = GoogleFonts.oxygen(
    textStyle: TextStyle(
        fontSize: 29,
        decoration: TextDecoration.none,
        color: Colors.black,
        fontWeight: FontWeight.w800),
  );
  static var customshapeTextStyle2 = GoogleFonts.cabin(
    textStyle: TextStyle(
      fontSize: 14,
      decoration: TextDecoration.none,
      color: Colors.black54,
      fontWeight: FontWeight.w200,
    ),
  );
}
