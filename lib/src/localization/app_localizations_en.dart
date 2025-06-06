// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get getStarted => 'Get Started';

  @override
  String get onBoarding => 'Just one scan for everything';

  @override
  String get email => 'Email';

  @override
  String get enterEmail => 'Enter your email';

  @override
  String get emailRequired => 'Email is required';

  @override
  String get emailError => 'Not email';

  @override
  String get password => 'Password';

  @override
  String get enterPassword => 'Enter the password';

  @override
  String get passwordRequired => 'Password is required';

  @override
  String get passwordError => 'Password is not correct';

  @override
  String get login => 'Login';

  @override
  String get register => 'Register';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get name => 'Name';

  @override
  String get enterName => 'Enter your name';

  @override
  String get nameRequired => 'Name is required';

  @override
  String get nameError => 'Name must be more than 3 characters';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get enterConfirmPassword => 'Enter the confirm password';

  @override
  String get confirmPasswordRequired => 'Confirm password is required';

  @override
  String get confirmPasswordError => 'Does not match the password';
}
