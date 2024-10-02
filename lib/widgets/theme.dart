import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AkashTheme {
  static ThemeData ourTheme(BuildContext context) => ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.pink,
        fontFamily: GoogleFonts.lato(fontSize: 30).fontFamily,
        appBarTheme: AppBarTheme(
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
}
