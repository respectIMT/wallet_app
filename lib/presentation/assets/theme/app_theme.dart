// Created by Muhammed Tolkinov on 14-October-2022

// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_colors.dart';
import 'light_mode.dart';

class AppTheme {
  static late BaseColors colors;

  static late ThemeMode themeMode;

  static late ThemeData data;

  static Future<void> init() async {
    themeMode = ThemeMode.system;
    colors = _getLightThemeColors();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    final textTheme = TextTheme(
      displayLarge: TextStyle(
        fontSize: 20.sp,
        color: colors.text900,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        fontSize: 20.sp,
        color: colors.text900,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontSize: 18.sp,
        color: colors.text900,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: TextStyle(
        fontSize: 24.sp,
        color: colors.text900,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        color: colors.text900,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontSize: 16.sp,
        color: colors.text900,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 14.sp,
        color: colors.text900,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        color: colors.text900,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: 14.sp,
        color: colors.text900,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: TextStyle(
        fontSize: 12.sp,
        color: colors.text900,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
        color: colors.text900,
        fontWeight: FontWeight.w600,
      ),
    );

    data = ThemeData(
      fontFamily: 'Samsung',
      textTheme: textTheme,
      backgroundColor: colors.background,
      scaffoldBackgroundColor: colors.background,
      toggleableActiveColor: colors.primary,
      brightness:
          themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
      textSelectionTheme: TextSelectionThemeData(cursorColor: colors.primary),
      toggleButtonsTheme: ToggleButtonsThemeData(
        selectedColor: colors.primary,
        selectedBorderColor: colors.primary,
        fillColor: colors.primary,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: colors.white,
        unselectedLabelColor: colors.primary,
        labelStyle: textTheme.subtitle1?.copyWith(
          color: colors.white,
        ),
        unselectedLabelStyle: textTheme.subtitle2,
      ),
      sliderTheme: SliderThemeData(
          activeTrackColor: colors.primary,
          activeTickMarkColor: colors.primary,
          thumbColor: colors.primary,
          inactiveTrackColor: colors.primary.withOpacity(0.25)),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: colors.background,
        focusColor: colors.primary,
        filled: true,
        errorMaxLines: 3,
        floatingLabelStyle:
            textTheme.bodyText2?.copyWith(color: colors.primary),
        labelStyle: textTheme.bodyText2
            ?.copyWith(fontSize: 16.sp, color: colors.text900),
        counterStyle: textTheme.caption?.copyWith(color: colors.primary),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: colors.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: colors.stroke),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: colors.red),
        ),
        helperStyle: textTheme.bodyText2,
        hintStyle: textTheme.bodyText2?.copyWith(color: colors.text900),
        errorStyle: textTheme.caption?.copyWith(color: colors.red),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 16.h,
        ),
      ),
    );
  }

  static BaseColors _getLightThemeColors() => const LightModeColors();
  // static BaseColors _getNightThemeColors() => const NightModeColors();
}
