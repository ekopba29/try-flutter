import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(9.0)),
      borderSide: BorderSide.none,
    ),
  ),
);
