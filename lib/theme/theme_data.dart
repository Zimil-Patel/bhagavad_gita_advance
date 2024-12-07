import 'package:bhagavad_gita_advance/utils/colors/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: false,
    scaffoldBackgroundColor: bg,
    colorScheme: ColorScheme.light(
      primary: Color(0xffffc342),
      surface: offWhite.withOpacity(0.5),
      secondary: offWhite,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.varelaRound(
        fontSize: 16.0,
      ),
      // Light gray for text
      bodyMedium: GoogleFonts.varelaRound(
        fontSize: 14.0,
      ),
      bodySmall: GoogleFonts.varelaRound(
        fontSize: 12.0,
      ),
      titleLarge: GoogleFonts.varelaRound(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.varelaRound(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.varelaRound(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xff222831),
    colorScheme: ColorScheme.dark(
      primary: Color(0xff222831),
      surface: Color(0xff222831),
      secondary: Color(0xff393E46),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.varelaRound(
        fontSize: 16.0,
      ),
      // Light gray for text
      bodyMedium: GoogleFonts.varelaRound(
        fontSize: 14.0,
      ),
      bodySmall: GoogleFonts.varelaRound(
        fontSize: 12.0,
      ),
      titleLarge: GoogleFonts.varelaRound(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.varelaRound(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.varelaRound(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
