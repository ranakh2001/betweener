import 'package:betweener_app/core/constants/constants.dart';
import 'package:betweener_app/core/theme/app_size.dart';
import 'package:betweener_app/core/theme/color_manager.dart';
import 'package:betweener_app/core/theme/text_theme/text_font_size.dart';
import 'package:betweener_app/core/theme/text_theme/text_manager.dart';
import 'package:flutter/material.dart';

class AppButtonTheme {
  AppButtonTheme._();
  static AppButtonTheme instance = AppButtonTheme._();

  ElevatedButtonThemeData get elevatedButtonStyle => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.instance.transparent,
          foregroundColor: ColorManager.instance.white,
          side: BorderSide.none,
          elevation: 0.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.r8),
          ),
          minimumSize: const Size(double.infinity, 48),
          textStyle: TextStyle(
            fontFamily: Constants.fontFamily,
            color: ColorManager.instance.white,
            fontSize: TextFontSize.fontSize16,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  OutlinedButtonThemeData get outlinedButtonStyle => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: ColorManager.instance.transparent,
          side: BorderSide(
            color: ColorManager.instance.white,
            width: 0.86,
          ),
          elevation: 0,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.r12),
          ),
          minimumSize: Size(double.infinity, AppSize.h40),
          textStyle: TextManager.headline5.copyWith(
            color: ColorManager.instance.white,
          ),
        ),
      );

  ButtonStyle outlinedButtonTheme({Color? textColor, Color? borderColor}) =>
      OutlinedButton.styleFrom(
          backgroundColor: textColor ?? ColorManager.instance.white,
          disabledBackgroundColor: ColorManager.instance.gray,
          elevation: 0,
          side: BorderSide(
            color: borderColor ?? ColorManager.instance.white,
            width: 0.5,
          ),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.r8),
            side: BorderSide(
              color: borderColor ?? ColorManager.instance.white,
            ),
          ),
          minimumSize: Size(double.infinity, AppSize.h40),
          textStyle: TextStyle(
            fontSize: TextFontSize.fontSize12,
            fontFamily: Constants.fontFamily,
          ));

  TextButtonThemeData get textButtonStyle => TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: ColorManager.instance.primary,
          backgroundColor: ColorManager.instance.transparent,
          textStyle: TextStyle(
            fontFamily: Constants.fontFamily,
            color: ColorManager.instance.black,
            fontSize: TextFontSize.fontSize16,
          ),
        ),
      );

 
}
