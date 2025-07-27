import 'package:flutter/material.dart';
import '../AppColors/AppColors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColor.blue,
    fontFamily: 'Cairo',

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: AppColor.blue,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColor.blue),
      titleTextStyle: TextStyle(
        color: AppColor.blue,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColor.blue),
      bodyMedium: TextStyle(color: AppColor.blue),
      bodySmall: TextStyle(color: AppColor.blue),
      titleLarge: TextStyle(color: AppColor.blue),
      titleMedium: TextStyle(color: AppColor.blue),
      titleSmall: TextStyle(color: AppColor.blue),
      labelLarge: TextStyle(color: AppColor.blue),
      labelMedium: TextStyle(color: AppColor.blue),
      labelSmall: TextStyle(color: AppColor.blue),
    ),

    primaryTextTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColor.blue),
      bodyMedium: TextStyle(color: AppColor.blue),
      bodySmall: TextStyle(color: AppColor.blue),
      titleLarge: TextStyle(color: AppColor.blue),
      titleMedium: TextStyle(color: AppColor.blue),
      titleSmall: TextStyle(color: AppColor.blue),
      labelLarge: TextStyle(color: AppColor.blue),
      labelMedium: TextStyle(color: AppColor.blue),
      labelSmall: TextStyle(color: AppColor.blue),
    ),

    colorScheme: const ColorScheme.light(
      primary: AppColor.blue,
      onPrimary: Colors.white,
      onBackground: AppColor.blue,
      onSurface: AppColor.blue,
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
      bodySmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white),
      labelMedium: TextStyle(color: Colors.white),
      labelSmall: TextStyle(color: Colors.white),
    ),

    primaryTextTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white),
      labelMedium: TextStyle(color: Colors.white),
      labelSmall: TextStyle(color: Colors.white),
    ),

    colorScheme: const ColorScheme.dark(
      primary: AppColor.blue,
      onPrimary: Colors.black12,
      onBackground: Colors.white,
      onSurface: Colors.white,
    ),
  );
}
