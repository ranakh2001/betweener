import 'package:betweener_app/core/constants/constants.dart';
import 'package:betweener_app/core/theme/app_theme.dart';
import 'package:betweener_app/providers/shared_pref_provider.dart';
import 'package:betweener_app/screens/auth/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsService = ref.watch(settingsServiceProvider);

    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: MediaQuery.of(context).size,
      builder:
          (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: Constants.appName,
            theme: AppTheme.instance.lightTheme,
            darkTheme: AppTheme.instance.darkTheme,
            themeMode: ThemeMode.system,
            locale:
                settingsService.getLanguage() == Constants.enLnagCode
                    ? const Locale(Constants.enLnagCode)
                    : const Locale(Constants.arLangCode),
            home: OnBoardingScreen(),
          ),
    );
  }
}
