import 'package:flutter/material.dart';

class ThemeUtils {
  static const backgroundColor = Color(0xff047178);
  static const secondaryBackgroundColor = Color(0xff049d8b);
  static const primaryColor = Color(0xff0ec171);
  static const borderColor = Color(0xff343c3c);
  static const foregroundColor = Color(0xff1e2227);

  static TextStyle get boldTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: foregroundColor,
      );

  static TextStyle get labelTextStyle => const TextStyle(
        fontSize: 16,
        color: Colors.white,
      );

  static ButtonStyle get loginButtonStyle => ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 13, horizontal: 50),
        ),
        textStyle: MaterialStatePropertyAll(labelTextStyle),
        backgroundColor: const MaterialStatePropertyAll(primaryColor),
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
      );

  static ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
        ),
      );
}
