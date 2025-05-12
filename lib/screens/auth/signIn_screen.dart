// import 'package:betweener_app/providers/shared_pref_provider.dart';
// ignore_for_file: file_names

import 'package:betweener_app/core/constants/const_svgs.dart';
import 'package:betweener_app/screens/auth/widget/signin_form.dart';
import 'package:betweener_app/src/localization/app_localizations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninScreen extends ConsumerWidget {
  const SigninScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  // علشان يضل المحتوى في نص الواجهة
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          ConstSvgs.auth,
                          width: 150.w,
                          height: 150.h,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      SigninForm(),
                      SizedBox(height: 16.h),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text:
                                "${AppLocalizations.of(context).dontHaveAccount} ",
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall!.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                            children: [
                              TextSpan(
                                text: AppLocalizations.of(context).register,
                                style: Theme.of(
                                  context,
                                ).textTheme.titleSmall!.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer:
                                    TapGestureRecognizer()..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
