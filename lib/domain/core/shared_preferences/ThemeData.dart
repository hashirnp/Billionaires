import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      textTheme: GoogleFonts.sahityaTextTheme(),
      primarySwatch: buildMaterialColor(const Color(0xFF264d91)),
      primaryColor: isDarkTheme ? Colors.black : Colors.white,
      cursorColor: isDarkTheme ? Colors.blueAccent : Colors.blueAccent,
      backgroundColor: isDarkTheme
          ? const Color.fromARGB(255, 0, 0, 0)
          : const Color(0xffF1F5FB),

      indicatorColor:
          isDarkTheme ? const Color(0xff0E1D36) : const Color(0xffCBDCF8),
      buttonColor:
          isDarkTheme ? const Color(0xff3B3B3B) : const Color(0xffF1F5FB),

      hintColor:
          isDarkTheme ? const Color(0xff280C0B) : const Color(0xffEECED3),

      highlightColor:
          isDarkTheme ? const Color(0xff372901) : const Color(0xffFCE192),
      hoverColor:
          isDarkTheme ? const Color(0xff3A3A3B) : const Color(0xff4285F4),

      focusColor:
          isDarkTheme ? const Color(0xff0B2512) : const Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      // textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      textSelectionTheme: TextSelectionThemeData(
          //cursorColor: const Color.fromARGB(255, 0, 134, 183),
          selectionColor: isDarkTheme ? Colors.blueAccent : Colors.blueAccent),
      cardColor: isDarkTheme ? const Color(0xFF151515) : Colors.white,
      cardTheme: CardTheme(
        color: isDarkTheme ? const Color(0xFF151515) : Colors.white,
      ),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme
              ? const ColorScheme.dark()
              : const ColorScheme.light()),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
      ),
    );
  }
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
