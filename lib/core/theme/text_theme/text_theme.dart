import 'package:betweener_app/core/theme/color_manager.dart';
import 'package:betweener_app/core/theme/text_theme/text_manager.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: TextManager.headline1,
    displaySmall: TextManager.headline2,
    headlineMedium: TextManager.headline3,
    headlineSmall: TextManager.headline4,
    titleLarge: TextManager.headline5,
    titleMedium: TextManager.headline6,
    titleSmall: TextManager.subTitle1,
    bodyLarge: TextManager.subTitle2,
    bodyMedium: TextManager.textBody1,
    bodySmall: TextManager.textBody2,
  );
  static TextTheme darkTextTheme = TextTheme(
    displayMedium: TextManager.headline1.copyWith(
      color: ColorManager.instance.white,
    ),
    displaySmall: TextManager.headline2.copyWith(
      color: ColorManager.instance.white,
    ),
    headlineMedium: TextManager.headline3.copyWith(
      color: ColorManager.instance.white,
    ),
    headlineSmall: TextManager.headline4.copyWith(
      color: ColorManager.instance.white,
    ),
    titleLarge: TextManager.headline5.copyWith(
      color: ColorManager.instance.white,
    ),
    titleMedium: TextManager.headline6.copyWith(
      color: ColorManager.instance.white,
    ),
    titleSmall: TextManager.subTitle1.copyWith(
      color: ColorManager.instance.white,
    ),
    bodyLarge: TextManager.subTitle2.copyWith(
      color: ColorManager.instance.white,
    ),
    bodyMedium: TextManager.textBody1.copyWith(
      color: ColorManager.instance.white,
    ),
    bodySmall: TextManager.textBody2.copyWith(
      color: ColorManager.instance.white,
    ),
  );
}
