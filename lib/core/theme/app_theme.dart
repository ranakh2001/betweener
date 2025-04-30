import 'package:betweener_app/core/constants/constants.dart';
import 'package:betweener_app/core/theme/app_size.dart';
import 'package:betweener_app/core/theme/button_theme.dart';
import 'package:betweener_app/core/theme/color_manager.dart';
import 'package:betweener_app/core/theme/text_theme/text_font_size.dart';
import 'package:betweener_app/core/theme/text_theme/text_manager.dart';
import 'package:betweener_app/core/theme/text_theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppTheme._();
  static AppTheme instance = AppTheme._();
  // light theme
  ThemeData get lightTheme {
    return ThemeData(
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(ColorManager.instance.primary),
      ),
      primaryColor: ColorManager.instance.primary,
      hintColor: ColorManager.instance.gray,
      colorScheme: ColorScheme.light(
        primary: ColorManager.instance.primary,
        surface: ColorManager.instance.white,
        secondary: ColorManager.instance.secondary,
        error: ColorManager.instance.googleRed,
      ),
      fontFamily: Constants.fontFamily,
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
        primaryColor: ColorManager.instance.primary,
        primaryContrastingColor: ColorManager.instance.primary,
      ),
      secondaryHeaderColor: ColorManager.instance.secondary,
      scaffoldBackgroundColor: ColorManager.instance.lightThemeScaffoldColor,
      dividerColor: ColorManager.instance.gray,
      appBarTheme: AppBarTheme(
        color: ColorManager.instance.white,
        iconTheme: IconThemeData(color: ColorManager.instance.primary),
        titleTextStyle: AppTextTheme.lightTextTheme.headlineSmall?.copyWith(
          color: ColorManager.instance.primary,
          fontWeight: FontWeight.w400,
        ),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.instance.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppButtonTheme.instance.elevatedButtonStyle,
      outlinedButtonTheme: AppButtonTheme.instance.outlinedButtonStyle,
      textButtonTheme: AppButtonTheme.instance.textButtonStyle,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManager.instance.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextManager.headline6.copyWith(
          color: ColorManager.instance.white,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: AppTextTheme.lightTextTheme.titleMedium?.copyWith(
          color: ColorManager.instance.white,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 28),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.darkBLue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.darkBLue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.darkBLue),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.googleRed),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.googleRed),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorManager.instance.darkBLue,
        selectedItemColor: ColorManager.instance.primary,
        unselectedItemColor: ColorManager.instance.gray,
        selectedLabelStyle: TextManager.headline6.copyWith(
          color: ColorManager.instance.primary,
          fontSize: TextFontSize.fontSize12,
        ),
        unselectedLabelStyle: TextManager.headline6.copyWith(
          color: ColorManager.instance.gray,
          fontSize: TextFontSize.fontSize1,
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.r12),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.all(ColorManager.instance.white),
        checkColor: WidgetStateProperty.all(ColorManager.instance.white),
        side: BorderSide(
          color: ColorManager.instance.gray,
          width: 0.5,
          style: BorderStyle.solid,
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(ColorManager.instance.white),
        trackColor: WidgetStateProperty.all(ColorManager.instance.primary),
        trackOutlineColor: WidgetStateColor.resolveWith(
          (states) => ColorManager.instance.gray,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ColorManager.instance.primary,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: ColorManager.instance.primary,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: ColorManager.instance.lightThemeScaffoldColor,
      ),
    );
  }

  // dark theme
  ThemeData get darkTheme {
    return ThemeData(
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(ColorManager.instance.primary),
      ),
      primaryColor: ColorManager.instance.primary,
      hintColor: ColorManager.instance.gray,
      colorScheme: ColorScheme.dark(
        primary: ColorManager.instance.primary,
        surface: ColorManager.instance.darkThemeScaffoldColor,
        secondary: ColorManager.instance.secondary,
        error: ColorManager.instance.googleRed,
      ),
      fontFamily: Constants.fontFamily,
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
        primaryColor: ColorManager.instance.primary,
        primaryContrastingColor: ColorManager.instance.primary,
      ),
      secondaryHeaderColor: ColorManager.instance.primary,
      scaffoldBackgroundColor: ColorManager.instance.darkThemeScaffoldColor,
      dividerColor: ColorManager.instance.gray,
      appBarTheme: AppBarTheme(
        color: ColorManager.instance.black,
        iconTheme: IconThemeData(color: ColorManager.instance.primary),
        titleTextStyle: AppTextTheme.darkTextTheme.headlineSmall?.copyWith(
          color: ColorManager.instance.primary,
          fontWeight: FontWeight.w400,
        ),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.instance.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      ),
      textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppButtonTheme.instance.elevatedButtonStyle,
      outlinedButtonTheme: AppButtonTheme.instance.outlinedButtonStyle,
      textButtonTheme: AppButtonTheme.instance.textButtonStyle,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManager.instance.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextManager.headline6.copyWith(
          color: ColorManager.instance.darkThemeScaffoldColor,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: AppTextTheme.lightTextTheme.titleMedium?.copyWith(
          color: ColorManager.instance.darkThemeScaffoldColor,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 28),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.white),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.googleRed),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.r8),
          borderSide: BorderSide(color: ColorManager.instance.googleRed),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorManager.instance.white,
        selectedItemColor: ColorManager.instance.primary,
        unselectedItemColor: ColorManager.instance.googleRed,
        selectedLabelStyle: TextManager.headline6.copyWith(
          color: ColorManager.instance.primary,
          fontSize: TextFontSize.fontSize12,
        ),
        unselectedLabelStyle: TextManager.headline6.copyWith(
          color: ColorManager.instance.gray,
          fontSize: TextFontSize.fontSize1,
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.r12),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.all(
          ColorManager.instance.darkThemeScaffoldColor,
        ),
        checkColor: WidgetStateProperty.all(
          ColorManager.instance.darkThemeScaffoldColor,
        ),
        side: BorderSide(
          color: ColorManager.instance.gray,
          width: 0.5,
          style: BorderStyle.solid,
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(
          ColorManager.instance.darkThemeScaffoldColor,
        ),
        trackColor: WidgetStateProperty.all(ColorManager.instance.primary),
        trackOutlineColor: WidgetStateColor.resolveWith(
          (states) => ColorManager.instance.gray,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ColorManager.instance.primary,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: ColorManager.instance.primary,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: ColorManager.instance.darkThemeScaffoldColor,
      ),
    );
  }
}
