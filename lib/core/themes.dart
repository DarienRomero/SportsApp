import 'package:flutter/material.dart';

class Themes {

  static ThemeData get lightMode => ThemeData(
    fontFamily: 'SFProDisplay',
    primaryColor: const Color(0xffef5843),
    cardColor: Color(0xffBAE6FD),
    scaffoldBackgroundColor: Colors.white,
    shadowColor: Colors.black.withOpacity(0.12),
    iconTheme: IconThemeData(
      color: Colors.black
    ),
    cardTheme: CardTheme(
      shadowColor: Color(0)
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Color(0xffADB5BD); // Cuando el botón está deshabilitado
            }
            return Colors.black; // Estado normal
          },
        ),
      )
    ),
    indicatorColor: Colors.white,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    )
  );

  static ThemeData get darkMode => ThemeData(
    fontFamily: 'SFProDisplay',
    primaryColor: const Color(0xffef5843),
    cardColor: Color(0xffA1E1FF),
    scaffoldBackgroundColor: Colors.black,
    shadowColor: Color(0),
    iconTheme: IconThemeData(
      color: Colors.white
    ),
    cardTheme: CardTheme(
      shadowColor: Color(0xff6C757D)
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Color(0xff6C757D); // Cuando el botón está deshabilitado
            }
            return Colors.white; // Estado normal
          },
        ),
      )
    ),
    indicatorColor: Colors.black,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Colors.white
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: Colors.white
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: Colors.white
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        color: Colors.white
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.white
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.white
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: Colors.white
      ),
    ),
  );

}
