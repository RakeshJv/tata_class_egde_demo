import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class COLORS {

  // App Colors //
  static const Color DRAWER_BG_COLOR = Colors.lightGreen;

  static const Color APP_THEME_COLOR = Color.fromARGB(255, 255, 105, 180);
  static const Color PRIMARY_COLOR = Color(0xFF35B4C5);
  static const Color PRIMARY_COLOR_LIGHT = Color(0xFFA5CFF1);
  static const Color PRIMARY_COLOR_DARK = Color(0xFF0D3656);
  static const Color ACCENT_COLOR = Color(0xFFF2DA04);
  static const Color CYAN_BLUE_COLOR = Color(0xff0D68C4);

  static const String APP_COLOR  =  "#005B8E";
  static const String APP_COLOR_SECONDARY  =  "#4682B1";
  static const String APP_COLOR_THIRD  =  "#0D68C4";

  static const String NEW_LOGIN_BG_COLOR  = "#005B8E"; /* "#00AABC";*/
  static const String STATUS_BAR_BG_COLOR  = "#007F90";
  static const String LOGIN_SCREEN_BG_COLOR1  = "#9FD6DD";
  static const String BUTTON_RED_COLOR  = "#c71610";
  static const Color PRIMARY = Color(0xFF18FFFF);
  static const Color SECONDARY = Color(0xFFFFF0F5);
  static const Color TERTIORRY = Color(0xFF000000);
  static const Color MARUNCOLOR = Color(0xFF800000);

  static const primary = "#18FFFF";
  static const secondary = "#ffffff";
  static const tertiory = "#000000";
  static const marunColor = "#800000";
  static const button = "#E0F7FA";

  static const String BUTTON_COLOR = "#0D68C4";

  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static Color iconColor = COLORS.hexToColor("#c71610");
  // Material Design Color
  static Color lightPrimary = Color(0xfffcfcff);
  static Color lightAccent = Color(0xFFF18C8E);
  static Color lightBackground = Color(0xfffcfcff);

  static Color grey = Color(0xff707070);
  static Color textPrimary = Color(0xFF486581);
  static Color textDark = Color(0xFF305F72);

  // Salmon
  static Color salmonMain = Color(0xFFF18C8E);
  static Color salmonDark = Color(0xFFBB7F87);
  static Color salmonLight = Color(0xFFF19895);

  // Blue

  static Color blueMain = Color(0xFF579ACA);
  static Color blueDark = Color(0xFF4E92B1);
  static Color blueLight = Color(0xFF5AA6C8);

  // Pink
  static Color lightPink = Color(0xFFFAE4F4);

  // Yellow
  static Color lightYellow = Color(0xFFFFF5E5);

  // Violet
  static Color lightViolet = Color(0xFFFBF5FF);

  static ThemeData lighTheme(BuildContext context) {
    return ThemeData(
      backgroundColor: lightBackground,
      primaryColor: lightPrimary,
      accentColor: lightAccent,
      cursorColor: lightAccent,
      scaffoldBackgroundColor: lightBackground,
      textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      appBarTheme: AppBarTheme(
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        iconTheme: IconThemeData(
          color: lightAccent,
        ),
      ),
    );
  }
  static double headerHeight = 228.5;
  static double mainPadding = 20.0;
}