import 'package:betweener_app/src/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAccountContainer extends StatelessWidget {
  const HomeAccountContainer({super.key, this.isAdd = false, required this.appName, required this.userName});
  final bool isAdd;
  final String appName;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color:
            isAdd
                ? Theme.of(context).primaryColor
                : Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            isAdd ? AppLocalizations.of(context).addMore : 'App name',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            isAdd ? '+' : 'User name',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
