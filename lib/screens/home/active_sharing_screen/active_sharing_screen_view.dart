import 'package:betweener_app/core/constants/const_svgs.dart';
import 'package:betweener_app/src/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveSharingScreenView extends StatelessWidget {
  const ActiveSharingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context).activeSharing,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
        SizedBox(height: 32.h),
        SvgPicture.asset(
          ConstSvgs.activeSharing,
          height: 250.h,
          width: 250.w,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.onSurface,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(height: 32.h),
        Flexible(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).disabledColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                margin: EdgeInsets.symmetric(vertical: 8.h),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline_rounded,
                      color: Theme.of(context).colorScheme.onSurface,
                      size: 24.sp,
                    ),
                    SizedBox(width: 16.w),
                    Text(
                      "User name",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
