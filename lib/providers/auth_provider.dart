import 'package:betweener_app/src/localization/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StateNotifierProvider<AuthController, bool>((ref) {
  return AuthController();
});

class AuthController extends StateNotifier<bool> {
  AuthController() : super(true);

  // toggle password visibility
  void togglePasswordVisibility() {
    state = !state;
  }

  // email validator
  String? emailValidator(String? value, context) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context).emailRequired;
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return AppLocalizations.of(context).emailError;
    }
    return null;
  }

  // password validator
  String? passwordValidator(String? value, context) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context).passwordRequired;
    }
    if (value.length < 6) {
      return AppLocalizations.of(context).passwordError;
    }
    return null;
  }

  // name validator
  String? nameValidator(String? value, context) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context).nameRequired;
    }
    if (value.length < 3) {
      return AppLocalizations.of(context).nameError;
    }
    return null;
  }

  // password verification validator
  String? passwordVerificationValidator(
    String? value,
    context,
    String password,
  ) {
    if (value == null || value.isEmpty) {
      return AppLocalizations.of(context).confirmPasswordRequired;
    }
    if (value != password) {
      return AppLocalizations.of(context).confirmPasswordError;
    }
    return null;
  }
}
