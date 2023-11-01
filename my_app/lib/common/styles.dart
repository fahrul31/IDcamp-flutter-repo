import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFFFFFFFF);
const Color secondaryColor = Color.fromARGB(255, 194, 194, 194);
const Color darkPrimaryColor = Color(0xFF1B1B1B);
const Color darkSecondaryColor = Color.fromARGB(255, 15, 15, 15);

final TextTheme myTextTheme = TextTheme(
  titleLarge: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
  titleMedium: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
  bodySmall: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
  bodyMedium: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
  bodyLarge: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
);
