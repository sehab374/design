import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
          labelMedium: GoogleFonts.poppins(
              fontSize: 20,
              color: MainColors.greyTextColor,
              fontWeight: FontWeight.w500),
          labelSmall: GoogleFonts.poppins(
              fontSize: 16,
              color: MainColors.greyTextColor,
              fontWeight: FontWeight.w500)));
}
