import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFF2f27ce), // Primary color
    // Removed backgroundColor and set it in the ColorScheme
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF2f27ce), // Primary
      secondary: const Color(0xFF443dff), // Secondary
      background: const Color(0xFFF1F4F8), // Background
      surface: const Color(0xFFFFFFFF), // Surface color
      error: const Color(0xFFFF5963), // Error
      onPrimary: Colors.white, // Text on Primary color
      onSecondary: Colors.white, // Text on Secondary color
      onBackground: const Color(0xFF2C2B3B), // Text on Background
      onError: Colors.white, // Text on Error
      onSurface: const Color(0xFF2C2B3B), // Text on Surface
    ),

    buttonTheme: ButtonThemeData(
      buttonColor: const Color(0xFF2f27ce), // Primary button color
      textTheme: ButtonTextTheme.primary,
    ),
   
   textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(fontWeight: FontWeight.bold), // Bold for large text
      displayMedium: GoogleFonts.poppins(fontWeight: FontWeight.w600), // Semi-bold for medium text
      displaySmall: GoogleFonts.poppins(fontWeight: FontWeight.w400), // Regular for small text
      headlineLarge: GoogleFonts.poppins(fontWeight: FontWeight.bold), // Bold for headline large
      headlineMedium: GoogleFonts.poppins(fontWeight: FontWeight.w600), // Semi-bold for headline medium
      headlineSmall: GoogleFonts.poppins(fontWeight: FontWeight.w400), // Regular for headline small
      titleLarge: GoogleFonts.poppins(fontWeight: FontWeight.w600), // Semi-bold for title large
      titleMedium: GoogleFonts.poppins(fontWeight: FontWeight.w500), // Medium for title medium
      titleSmall: GoogleFonts.poppins(fontWeight: FontWeight.w400), // Regular for title small
      bodyLarge: GoogleFonts.poppins(fontWeight: FontWeight.w400), // Regular for large body text
      bodyMedium: GoogleFonts.poppins(fontWeight: FontWeight.w400), // Regular for medium body text
      bodySmall: GoogleFonts.poppins(fontWeight: FontWeight.w400), // Regular for small body text
      labelLarge: GoogleFonts.poppins(fontWeight: FontWeight.w500), // Medium for large label text
      labelMedium: GoogleFonts.poppins(fontWeight: FontWeight.w400), // Regular for medium label text
      labelSmall: GoogleFonts.poppins(fontWeight: FontWeight.w400), // Regular for small label text
    ),
  );
}
