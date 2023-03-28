import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intel_comm_flutter/constants/color_scheme.dart';
import 'package:material_color_generator/material_color_generator.dart';

ThemeData lightThemeDataCustom = _buildLightTheme();

ThemeData _buildLightTheme() {
  ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: lightColorScheme,
    // primaryColor: lightColorScheme.primary,
    // accentColor: Colors.amber,
    scaffoldBackgroundColor: Colors.grey[100],
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme).apply(
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
  );
}

ThemeData darkThemeDataCustom = _buildDarkTheme();

ThemeData _buildDarkTheme() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(


    
    colorScheme: darkColorScheme,
    // primaryColor: darkColorScheme.primary,
    // scaffoldBackgroundColor: darkColorScheme.background,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme).apply(

      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
  );
}
