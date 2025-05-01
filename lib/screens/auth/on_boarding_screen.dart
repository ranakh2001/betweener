import 'package:betweener_app/core/constants/const_svgs.dart';
import 'package:betweener_app/core/theme/app_size.dart';
import 'package:betweener_app/providers/shared_pref_provider.dart';
import 'package:betweener_app/screens/auth/widget/custom_button.dart';
import 'package:betweener_app/src/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsProvider = ref.watch(settingsServiceProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ConstSvgs.onBoarding,
              width: AppSize.w200,
              height: AppSize.w200,
            ),
            SizedBox(height: 16.h),
            Text(
              AppLocalizations.of(context).onBoarding,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 100.h),
            CustomButton(
              text: AppLocalizations.of(context).getStarted,
              onPressed: () {
                // settingsProvider.setIsOpened();
              },
            ),
          ],
        ),
      ),
    );
  }
}
