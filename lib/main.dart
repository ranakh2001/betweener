import 'package:betweener_app/core/app_widget.dart';
import 'package:betweener_app/core/constants/constants.dart';
import 'package:betweener_app/providers/shared_pref_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs =
      await SharedPreferences.getInstance(); // Initialize SharedPreferences
  final settingsService = SettingsService(prefs);
  if (!settingsService.isOpend) {
    final deviceLocale =
        WidgetsBinding
            .instance
            .platformDispatcher
            .locales
            .first; // get device local
    final defaultLanguage =
        deviceLocale.languageCode == 'en'
            ? Constants.enLnagCode
            : Constants.arLangCode;
    await settingsService.setLanguage(defaultLanguage);
  }

  runApp(
    ProviderScope(
      overrides: [sharedPreferenceProvidor.overrideWithValue(prefs)],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppWidget();
  }
}
