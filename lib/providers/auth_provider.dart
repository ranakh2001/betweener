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
      return "البريد الإلكتروني مطلوب";
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return "صيغة البريد الإلكتروني خاطئة";
    }
    return null;
  }

  // password validator
  String? passwordValidator(String? value, context) {
    if (value == null || value.isEmpty) {
      return "كلمة المرور مطلوبة";
    }
    if (value.length < 6) {
      return "كلمة المرور يجب أن تكون 6 أحرف على الأقل";
    }
    return null;
  }
}
