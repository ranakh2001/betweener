import 'package:betweener_app/core/constants/routers.dart';
import 'package:betweener_app/providers/auth_provider.dart';
import 'package:betweener_app/screens/auth/widget/custom_button.dart';
import 'package:betweener_app/screens/auth/widget/custom_textField.dart';
import 'package:betweener_app/src/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninForm extends ConsumerStatefulWidget {
  const SigninForm({super.key});

  @override
  ConsumerState<SigninForm> createState() => _SigninForm();
}

class _SigninForm extends ConsumerState<SigninForm> {
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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextfield(
            controller: _emailController!,
            lable: AppLocalizations.of(context).email,
            validator: (value) => authController.emailValidator(value, context),
            hint: AppLocalizations.of(context).enterEmail,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16.h),
          CustomTextfield(
            controller: _passwordController!,
            lable: AppLocalizations.of(context).password,
            validator:
                (value) => authController.passwordValidator(value, context),
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
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context).forgotPassword,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          CustomButton(
            text: AppLocalizations.of(context).login,
            onPressed: () {
              _formKey.currentState!.validate();
              _emailController!.clear();
              _passwordController!.clear();
              Navigator.pushNamedAndRemoveUntil(
                context,
                Routers.home,
                (router) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
