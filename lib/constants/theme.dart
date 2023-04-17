import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const COLOR_PRIMARY = Color(0x2D6E7E);
const COLOR_ACCENT = Color(0xC6DE41);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  // primaryColor: COLOR_PRIMARY,
  // floatingActionButtonTheme:
  //     FloatingActionButtonThemeData(backgroundColor: COLOR_ACCENT),
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ButtonStyle(
  //     padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
  //       EdgeInsets.symmetric(
  //         vertical: 10,
  //         horizontal: 10,
  //       ),
  //     ),
  //   ),
  // ),
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme).apply(
    fontFamily: GoogleFonts.poppins().fontFamily,
  ),
);


/* text theme
textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme).apply(

      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
*/