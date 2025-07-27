import 'package:flutter/material.dart';

class AppFont {
  AppFont._();

  static double fontHeight = 1.2;
}

class AppFontSize {
  AppFontSize._();

  static double get fontSize_8 => 8;

  static double get fontSize_10 => 10;

  static double get fontSize_12 => 12;

  static double get fontSize_14 => 14;

  static double get fontSize_16 => 16;

  static double get fontSize_18 => 18;

  static double get fontSize_20 => 20;

  static double get fontSize_22 => 22;

  static double get fontSize_24 => 24;

  static double get fontSize_26 => 26;

  static double get fontSize_32 => 32;

  static double get fontSize_48 => 48;
}

class AppFontWeight {
  AppFontWeight._();
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight bold = FontWeight.w700;
}

class AppFontStyle {
  static TextStyle style(double size, FontWeight weight) {
    return TextStyle(
      fontWeight: weight,
      fontSize: size,
      fontFamily: 'Cairo',
      height: AppFont.fontHeight,
    );
  }

  //
  static TextStyle get font10Regular =>
      style(AppFontSize.fontSize_12, AppFontWeight.regular);
  static TextStyle get font10Medium =>
      style(AppFontSize.fontSize_12, AppFontWeight.medium);
  static TextStyle get font10Bold =>
      style(AppFontSize.fontSize_12, AppFontWeight.bold);

  //
  static TextStyle get font12Regular =>
      style(AppFontSize.fontSize_12, AppFontWeight.regular);
  static TextStyle get font12Medium =>
      style(AppFontSize.fontSize_12, AppFontWeight.medium);
  static TextStyle get font12Bold =>
      style(AppFontSize.fontSize_12, AppFontWeight.bold);

  //
  static TextStyle get font14Regular =>
      style(AppFontSize.fontSize_14, AppFontWeight.regular);
  static TextStyle get font14Medium =>
      style(AppFontSize.fontSize_14, AppFontWeight.medium);
  static TextStyle get font14Bold =>
      style(AppFontSize.fontSize_14, AppFontWeight.bold);

  //
  static TextStyle get font16Regular =>
      style(AppFontSize.fontSize_16, AppFontWeight.regular);
  static TextStyle get font16Medium =>
      style(AppFontSize.fontSize_16, AppFontWeight.medium);
  static TextStyle get font16Bold =>
      style(AppFontSize.fontSize_16, AppFontWeight.bold);

  //
  static TextStyle get font18Regular =>
      style(AppFontSize.fontSize_18, AppFontWeight.regular);
  static TextStyle get font18Medium =>
      style(AppFontSize.fontSize_18, AppFontWeight.medium);
  static TextStyle get font18Bold =>
      style(AppFontSize.fontSize_18, AppFontWeight.bold);

  //
  static TextStyle get font20Regular =>
      style(AppFontSize.fontSize_20, AppFontWeight.regular);
  static TextStyle get font20Medium =>
      style(AppFontSize.fontSize_20, AppFontWeight.medium);
  static TextStyle get font20Bold =>
      style(AppFontSize.fontSize_20, AppFontWeight.bold);

  //
  static TextStyle get font22Regular =>
      style(AppFontSize.fontSize_22, AppFontWeight.regular);
  static TextStyle get font22Medium =>
      style(AppFontSize.fontSize_22, AppFontWeight.medium);
  static TextStyle get font22Bold =>
      style(AppFontSize.fontSize_22, AppFontWeight.bold);

  //
  static TextStyle get font24Regular =>
      style(AppFontSize.fontSize_24, AppFontWeight.regular);
  static TextStyle get font24Medium =>
      style(AppFontSize.fontSize_24, AppFontWeight.medium);
  static TextStyle get font24Bold =>
      style(AppFontSize.fontSize_24, AppFontWeight.bold);

  //
  static TextStyle get font26Regular =>
      style(AppFontSize.fontSize_26, AppFontWeight.regular);
  static TextStyle get font26Medium =>
      style(AppFontSize.fontSize_26, AppFontWeight.medium);
  static TextStyle get font26Bold =>
      style(AppFontSize.fontSize_26, AppFontWeight.bold);

  //
  static TextStyle get font32Regular =>
      style(AppFontSize.fontSize_32, AppFontWeight.regular);
  static TextStyle get font32Medium =>
      style(AppFontSize.fontSize_32, AppFontWeight.medium);
  static TextStyle get font32Bold =>
      style(AppFontSize.fontSize_32, AppFontWeight.bold);
}
