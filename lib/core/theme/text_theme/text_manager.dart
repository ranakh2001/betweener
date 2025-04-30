import 'package:betweener_app/core/constants/constants.dart';
import 'package:betweener_app/core/theme/color_manager.dart';
import 'package:betweener_app/core/theme/text_theme/text_font_size.dart';
import 'package:flutter/widgets.dart';

class TextManager {
  static TextStyle get inputTheme => TextStyle(
    fontFamily: Constants.fontFamily,
    fontWeight: FontWeight.w400,
    color: ColorManager.instance.gray,
  );
  // headline 
    static TextStyle get headline1 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize34,
      overflow: TextOverflow.ellipsis);

  static TextStyle get headline2 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize28,
      overflow: TextOverflow.ellipsis);

  static TextStyle get headline3 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize24,
      overflow: TextOverflow.ellipsis);

  static TextStyle get headline4 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize20,
      overflow: TextOverflow.ellipsis);

  static TextStyle get headline5 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize16,
      overflow: TextOverflow.ellipsis);

  static TextStyle get headline6 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize12,
      overflow: TextOverflow.ellipsis);

      
  static TextStyle get subTitle1 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize17,
      overflow: TextOverflow.ellipsis);

  static TextStyle get subTitle2 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize12,
      overflow: TextOverflow.ellipsis);

  static TextStyle get textBody1 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize16,
      overflow: TextOverflow.ellipsis);

  static TextStyle get textBody2 => TextStyle(
      fontFamily: Constants.fontFamily,
      color: ColorManager.instance.black,
      fontWeight: FontWeight.normal,
      fontSize: TextFontSize.fontSize14,
      overflow: TextOverflow.ellipsis);
}
