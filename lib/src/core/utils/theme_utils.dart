import 'package:flutter/material.dart';

class ThemeUtils {
  static const backgroundColor = Color(0xff047178);
  static const secondaryBackgroundColor = Color(0xff049d8b);
  static const primaryColor = Color(0xff0ec171);
  static const borderColor = Color(0xff343c3c);
  static const foregroundColor = Color(0xff1e2227);

  static ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          background: backgroundColor,
          onBackground: foregroundColor,
          primary: primaryColor,
          onPrimary: foregroundColor,
          secondary: backgroundColor,
          onSecondary: foregroundColor,
          tertiary: secondaryBackgroundColor,
          onTertiary: foregroundColor,
          surfaceTint: Colors.white,
          outline: borderColor,
          shadow: borderColor,
          error: Colors.red,
        ),
      );
}
