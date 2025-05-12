// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get getStarted => 'البدء';

  @override
  String get onBoarding => 'فقط مسح واحد لكل شيء';

  @override
  String get email => 'البريد الالكتروني';

  @override
  String get enterEmail => 'أدخل البريد الالكتروني';

  @override
  String get emailRequired => 'البريد الالكتروني مطلوب';

  @override
  String get emailError => 'البريد الالكتروني غير صحيح';

  @override
  String get password => 'كلمة المرور';

  @override
  String get enterPassword => 'أدخل كلمة المرور';

  @override
  String get passwordRequired => 'كلمة المرور مطلوبة';

  @override
  String get passwordError => 'كلمة المرور غير صحيحة';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get register => 'تسجيل';

  @override
  String get forgotPassword => 'نسيت كلمة المرور';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟';
}
