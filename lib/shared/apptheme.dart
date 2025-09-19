import 'package:flutter/material.dart';
import 'package:news/shared/manager.dart';

class Apptheme {
  static Color backgroundDark = Color(0xFF171717);
  static Color backgroundLight = Color(0xFFFFFFFF);
  static Color white = Color(0xFFFFFFFF);
  static Color black = Color(0xFF171717);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: backgroundLight,

    appBarTheme: AppBarTheme(
      backgroundColor: backgroundLight,
      centerTitle: true,
      foregroundColor: black,
      titleTextStyle: TextStyle(
        fontSize: FontManager.f20,
        fontWeight: FontWeightManager.fw500,
        color: black,
      ),
      elevation: 3,
    ),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(RadiusManager.r16),
        borderSide: BorderSide(color: black),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(RadiusManager.r16),
        borderSide: BorderSide(color: black),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(RadiusManager.r16),
        borderSide: BorderSide(color: black),
      ),
      hintStyle: TextStyle(
        fontSize: FontManager.f20,
        fontWeight: FontWeightManager.fw500,
        color: black,
      ),
      prefixIconColor: black,
      suffixIconColor: black,
    ),

    drawerTheme: DrawerThemeData(backgroundColor: backgroundLight, elevation: 5),

    bottomSheetTheme: BottomSheetThemeData(
      modalBackgroundColor: black,
      modalElevation: 5,
    ),

    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusManager.r16),
          borderSide: BorderSide(color: black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusManager.r16),
          borderSide: BorderSide(color: black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusManager.r16),
          borderSide: BorderSide(color: black),
        ),
      ),
      textStyle: TextStyle(
        fontSize: FontManager.f20,
        fontWeight: FontWeightManager.fw500,
        color: black,
      ),
    ),

    dividerColor: black,

    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: FontManager.f24,
        fontWeight: FontWeightManager.fw500,
        color: black,
      ),
      titleMedium: TextStyle(
        fontSize: FontManager.f16,
        fontWeight: FontWeightManager.fw700,
        color: black,
      ),
      titleSmall: TextStyle(
        fontSize: FontManager.f14,
        fontWeight: FontWeightManager.fw500,
        color: black,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: backgroundDark,

    appBarTheme: AppBarTheme(
      backgroundColor: backgroundDark,
      centerTitle: true,
      foregroundColor: white,
      titleTextStyle: TextStyle(
        fontSize: FontManager.f20,
        fontWeight: FontWeightManager.fw500,
        color: white,
      ),
      elevation: 3,
    ),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(RadiusManager.r16),
        borderSide: BorderSide(color: white)
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(RadiusManager.r16),
        borderSide: BorderSide(color: white)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(RadiusManager.r16),
        borderSide: BorderSide(color: white)
      ),
      hintStyle: TextStyle(
        fontSize: FontManager.f20,
        fontWeight: FontWeightManager.fw500,
        color: white,
      ),
      prefixIconColor: white,
      suffixIconColor: white,
    ),

    drawerTheme: DrawerThemeData(
      backgroundColor: backgroundDark,
      elevation: 5,
    ),

    bottomSheetTheme: BottomSheetThemeData(
      modalBackgroundColor: white,
      modalElevation: 5,
    ),

    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusManager.r16),
          borderSide: BorderSide(color: white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusManager.r16),
          borderSide: BorderSide(color: white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusManager.r16),
          borderSide: BorderSide(color: white),
        ),
      ),
      textStyle: TextStyle(
        fontSize: FontManager.f20,
        fontWeight: FontWeightManager.fw500,
        color: white,
      ),
    ),

    dividerColor: white,

    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: FontManager.f24,
        fontWeight: FontWeightManager.fw500,
        color: white,
      ),
      titleMedium: TextStyle(
        fontSize: FontManager.f16,
        fontWeight: FontWeightManager.fw700,
        color: white,
      ),
      titleSmall: TextStyle(
        fontSize: FontManager.f14,
        fontWeight: FontWeightManager.fw500,
        color: white,
      ),
    )
  );
}
