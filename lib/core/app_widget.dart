import 'package:betweener_app/core/constants/constants.dart';
import 'package:betweener_app/core/constants/routers.dart';
import 'package:betweener_app/core/theme/app_theme.dart';
import 'package:betweener_app/providers/shared_pref_provider.dart';
import 'package:betweener_app/screens/auth/on_boarding_screen.dart';
import 'package:betweener_app/screens/auth/signIn_screen.dart';
import 'package:betweener_app/screens/auth/signUp_screen.dart';
import 'package:betweener_app/src/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeProvider);
    final settingsProvider = ref.watch(settingsServiceProvider);

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
            locale: currentLocale,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            home:
                settingsProvider.isOpend ? SigninScreen() : OnBoardingScreen(),
            routes: {
              Routers.onBoarding: (context) => const OnBoardingScreen(),
              Routers.login: (context) => const SigninScreen(),
              Routers.register: (context)=> SignupScreen()
            },
          ),
    );
  }
}
