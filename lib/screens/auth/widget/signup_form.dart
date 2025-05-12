import 'package:betweener_app/providers/auth_provider.dart';
import 'package:betweener_app/screens/auth/widget/custom_button.dart';
import 'package:betweener_app/screens/auth/widget/custom_textField.dart';
import 'package:betweener_app/src/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupForm extends ConsumerStatefulWidget {
  const SignupForm({super.key});

  @override
  ConsumerState<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends ConsumerState<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _nameController;
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  TextEditingController? _passwordConfirmationController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordConfirmationController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController!.dispose();
    _emailController!.dispose();
    _passwordController!.dispose();
    _passwordConfirmationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authController = ref.read(authProvider.notifier);
    final isPasswordVisible = ref.watch(authProvider);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextfield(
            controller: _nameController!,
            hint: AppLocalizations.of(context).enterName,
            lable: AppLocalizations.of(context).name,
            keyboardType: TextInputType.text,
            validator: (value) => authController.nameValidator(value, context),
          ),
          SizedBox(height: 16),
          CustomTextfield(
            controller: _emailController!,
            hint: AppLocalizations.of(context).enterEmail,
            lable: AppLocalizations.of(context).email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) => authController.emailValidator(value, context),
          ),
          SizedBox(height: 16),
          CustomTextfield(
            controller: _passwordController!,
            hint: AppLocalizations.of(context).enterPassword,
            lable: AppLocalizations.of(context).password,
            keyboardType: TextInputType.visiblePassword,
            isPassword: true,
            validator:
                (value) => authController.passwordValidator(value, context),
            visible: isPasswordVisible,
            onTap: authController.togglePasswordVisibility,
          ),
          SizedBox(height: 16),
          CustomTextfield(
            controller: _passwordConfirmationController!,
            hint: AppLocalizations.of(context).enterConfirmPassword,
            lable: AppLocalizations.of(context).confirmPassword,
            keyboardType: TextInputType.visiblePassword,
            isPassword: true,
            validator:
                (value) => authController.passwordVerificationValidator(
                  value,
                  context,
                  _passwordController!.text,
                ),
            visible: isPasswordVisible,
            onTap: authController.togglePasswordVisibility,
          ),
          SizedBox(height: 24.h),
          CustomButton(
            text: AppLocalizations.of(context).register,
            onPressed: () {
              _formKey.currentState!.validate();
              _nameController!.clear();
              _emailController!.clear();
              _passwordController!.clear();
              _passwordConfirmationController!.clear();
            },
          ),
        ],
      ),
    );
  }
}
