import 'dart:ui';

import 'package:betweener_app/core/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferenceProvidor = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError('SharedPreferences not initialized'),
);

final settingsServiceProvider = Provider<SettingsService>((ref) {
  final prefs = ref.watch(sharedPreferenceProvidor);
  return SettingsService(prefs);
});

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale?>((ref) {
  final settingsService = ref.watch(settingsServiceProvider);
  return LocaleNotifier(settingsService: settingsService);
});

class LocaleNotifier extends StateNotifier<Locale?>{
  final SettingsService settingsService;
  LocaleNotifier({required this.settingsService}) : super(null) {
    _loadLocale();
  }

  void _loadLocale() {
    final languageCode = settingsService.getLanguage();
    state = Locale(languageCode);
  }

  void setLocale(Locale locale) {
    state = locale;
    settingsService.setLanguage(locale.languageCode);
  }
}

class SettingsService {
  final SharedPreferences _pref;
  SettingsService(this._pref);

  // look if its the first time the app is opened
  Future<void> setIsOpened() async {
    await _pref.setBool('isOpened', true);
  }
// get the value of is opened to check if the app is opened for the first time in the home screen 
  bool get isOpend => _pref.getBool('isOpened')?? false;

   Future<void> setLanguage(String languageCode) async {
    await _pref.setString('language', languageCode);
  }

  String getLanguage() {
    return _pref.getString('language') ?? Constants.enLnagCode;
  }
}
