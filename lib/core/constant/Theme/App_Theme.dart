import 'package:flutter/material.dart';
import '../AppColors/AppColors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColor.blue,
    fontFamily: 'Cairo',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,         // AppBar is white
      foregroundColor: Colors.black12,         // Icons/text are black
      elevation: 0,
      iconTheme: IconThemeData(color:AppColor.blue),
      titleTextStyle: TextStyle(
        color: AppColor.blue,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColor.blue),
      bodyMedium: TextStyle(color:AppColor.blue),
      titleLarge: TextStyle(color:AppColor.blue),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColor.blue,
      onPrimary: Colors.white,
      onBackground: Colors.black12,
      onSurface: Colors.black12,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black12,
    primaryColor: AppColor.blue,
    fontFamily: 'Cairo',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black12,
      foregroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColor.blue,
      onPrimary: Colors.black12,
      onBackground: Colors.white,
      onSurface: Colors.white,
    ),
  );
}
