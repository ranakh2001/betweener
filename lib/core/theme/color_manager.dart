import 'dart:ui';

class ColorManager {
  ColorManager._();
  static ColorManager instance = ColorManager._();

  final Color primary = const Color(0xffFFD465);
  final Color secondary = const Color(0xffE7E5F1);
  final Color darkBLue = const Color(0xff2D2B4E);
  final Color brown = const Color(0xff784E00);
  final Color googleRed = const Color(0xffA90606);
  final Color deleteButtonRed = const Color(0xffF56C61);
  final Color gray = const Color(0xffCECECE);
  final Color black = const Color(0xff000000);
  final Color white = const Color(0xffffffff);
  final Color lightThemeScaffoldColor = const Color(0xffF5F5F5);
  final Color darkThemeScaffoldColor = const Color(0xff242424);
  final Color transparent = const Color(0x00000000);
}
