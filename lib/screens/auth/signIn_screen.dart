// import 'package:betweener_app/providers/shared_pref_provider.dart';
// ignore_for_file: file_names

import 'package:betweener_app/core/constants/const_svgs.dart';
import 'package:betweener_app/providers/auth_provider.dart';
import 'package:betweener_app/screens/auth/widget/custom_button.dart';
import 'package:betweener_app/screens/auth/widget/custom_textField.dart';
import 'package:betweener_app/src/localization/app_localizations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninScreen extends ConsumerStatefulWidget {
  const SigninScreen({super.key});

  @override
  ConsumerState<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends ConsumerState<SigninScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController?.dispose();
    _passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authController = ref.read(authProvider.notifier);
    final isPasswordVisible = ref.watch(authProvider);

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
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextfield(
                              emailController: _emailController!,
                              lable: AppLocalizations.of(context).email,
                              validator:
                                  (value) => authController.emailValidator(
                                    value,
                                    context,
                                  ),
                              hint: AppLocalizations.of(context).enterEmail,
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 16.h),
                            CustomTextfield(
                              emailController: _passwordController!,
                              lable: AppLocalizations.of(context).password,
                              validator:
                                  (value) => authController.passwordValidator(
                                    value,
                                    context,
                                  ),
                              hint: AppLocalizations.of(context).enterPassword,
                              isPassword: true,
                              onTap: authController.togglePasswordVisibility,
                              visible: isPasswordVisible,
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    AppLocalizations.of(context).forgotPassword,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodySmall!.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            CustomButton(
                              text: AppLocalizations.of(context).login,
                              onPressed: () {},
                            ),
                            SizedBox(height: 16.h),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: "Don’t have an account already? ",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.titleSmall!.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Sign Up",
                                      style: Theme.of(
                                        context,
                                      ).textTheme.titleSmall!.copyWith(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.primary,
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
