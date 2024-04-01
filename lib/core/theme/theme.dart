import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightThemeMode = ThemeData.light().copyWith(
    brightness: Brightness.light,
    textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily),
        ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 27),
    ),
  );
}
