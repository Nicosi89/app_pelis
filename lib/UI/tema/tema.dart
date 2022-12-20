import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tema {

  static TextTheme textTemaClaro = TextTheme(

    headline1: GoogleFonts.josefinSans(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      wordSpacing: -1.5,
      color: Colors.black,
    ),
    headline2: GoogleFonts.josefinSans(
      fontSize: 19,
        wordSpacing: -0.5,
      color: Colors.black,
    ),
    headline3: GoogleFonts.redHatDisplay(
      fontSize: 22,
      color: Colors.black,
    ),
    bodyText1: GoogleFonts.redHatDisplay(
      fontSize: 16,
      color: Colors.black,
    ),
    bodyText2: GoogleFonts.redHatDisplay(
      fontSize: 14,
      color: Colors.black,
    ),
    subtitle1: GoogleFonts.rubik(
      fontSize: 16,
      color: Colors.black,
    ),
    subtitle2: GoogleFonts.rubik(
      fontSize: 14,
      color: Colors.black,
    ),

  );

  static TextTheme textTemaOscura = TextTheme(

    headline1: GoogleFonts.acme(
      fontSize: 35,
      fontWeight: FontWeight.w300,
      wordSpacing: -1.5,
      color: Colors.white,
    ),
    headline2: GoogleFonts.rubik(
      fontSize: 22,
      wordSpacing: -0.5,
      color: Colors.white,
    ),
    headline3: GoogleFonts.redHatDisplay(
      fontSize: 22,
      color: Colors.white,
    ),
    bodyText1: GoogleFonts.redHatDisplay(
      fontSize: 16,
      color: Colors.white,
    ),
    bodyText2: GoogleFonts.redHatDisplay(
      fontSize: 14,
      color: Colors.white,
    ),
    subtitle1: GoogleFonts.rubik(
      fontSize: 16,
      color: Colors.white,
    ),
    subtitle2: GoogleFonts.rubik(
      fontSize: 14,
      color: Colors.white,
    ),

  );


  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF684DAC),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFE9DDFF),
    onPrimaryContainer: Color(0xFF22005D),
    secondary: Color(0xFF625B71),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFE8DEF8),
    onSecondaryContainer: Color(0xFF1E192B),
    tertiary: Color(0xFF7E5260),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFD9E3),
    onTertiaryContainer: Color(0xFF31101D),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF1C1B1E),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF1C1B1E),
    surfaceVariant: Color(0xFFE7E0EB),
    onSurfaceVariant: Color(0xFF49454E),
    outline: Color(0xFF7A757F),
    onInverseSurface: Color(0xFFF4EFF4),
    inverseSurface: Color(0xFF313033),
    inversePrimary: Color(0xFFCFBCFF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF684DAC),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFCFBCFF),
    onPrimary: Color(0xFF381A7B),
    primaryContainer: Color(0xFF4F3492),
    onPrimaryContainer: Color(0xFFE9DDFF),
    secondary: Color(0xFFCCC2DB),
    onSecondary: Color(0xFF332D41),
    secondaryContainer: Color(0xFF4A4458),
    onSecondaryContainer: Color(0xFFE8DEF8),
    tertiary: Color(0xFFEFB8C8),
    onTertiary: Color(0xFF4A2532),
    tertiaryContainer: Color(0xFF633B48),
    onTertiaryContainer: Color(0xFFFFD9E3),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF1C1B1E),
    onBackground: Color(0xFFE6E1E6),
    surface: Color(0xFF1C1B1E),
    onSurface: Color(0xFFE6E1E6),
    surfaceVariant: Color(0xFF49454E),
    onSurfaceVariant: Color(0xFFCAC4CF),
    outline: Color(0xFF948F99),
    onInverseSurface: Color(0xFF1C1B1E),
    inverseSurface: Color(0xFFE6E1E6),
    inversePrimary: Color(0xFF684DAC),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFCFBCFF),

  );

  static ThemeData themeClaro = ThemeData(
      textTheme: textTemaClaro,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.blue,
        backgroundColor: const Color.fromRGBO(255, 246, 213, 10),
        brightness: Brightness.dark
      )//lightColorScheme,

  );

  static ThemeData themeOscuro = ThemeData(
    textTheme: textTemaOscura,
    //colorScheme: darkColorScheme,
    primarySwatch: Colors.deepPurple,
    backgroundColor: Colors.black

  );




}