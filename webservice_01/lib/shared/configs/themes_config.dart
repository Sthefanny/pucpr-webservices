import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static const Color primary = Color(0xFF1B3E73);
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF1F1F1);
  static const Color whiteBackground = Color(0xFFF1F1F1);
  static const Color grey = Color(0xFF787993);
  static const Color grey_300 = Color(0xFFE3E3E3);
  static const Color blueDark = Color(0xFF3e59c4);
  static const Color blueLight = Color(0xFF3a91c6);
  static const Color danger = Color(0xFFCE0707);

  static const Gradient gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [blueDark, blueLight],
  );

  static const Gradient gradientAvatar = LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
    colors: [Color(0xFF3B86C5), Color(0xFFEEF1F8)],
  );

  static final ThemeData listMeTheme = ThemeData(
    primaryColor: primary,
  );

  static final titleStyle = GoogleFonts.roboto(
    color: primary,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static final textStyle = GoogleFonts.roboto(
    color: grey,
    fontSize: 16,
  );
}
