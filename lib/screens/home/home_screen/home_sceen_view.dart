import 'package:betweener_app/core/constants/const_svgs.dart';
import 'package:betweener_app/core/theme/app_size.dart';
import 'package:betweener_app/screens/home/home_screen/widgets/home_account_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSceenView extends StatelessWidget {
  const HomeSceenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    ConstSvgs.searchIcon,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onSurface,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    ConstSvgs.scanQrCode,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onSurface,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            SvgPicture.asset(
              ConstSvgs.qrCode,
              height: 300.h,
              width: 300.w,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(height: 16.h),
            Spacer(),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return HomeAccountContainer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
