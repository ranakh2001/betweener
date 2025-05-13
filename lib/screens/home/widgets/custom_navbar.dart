import 'package:betweener_app/core/theme/color_manager.dart';
import 'package:betweener_app/providers/home_provider.dart';
import 'package:betweener_app/screens/home/widgets/navBar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavbar extends ConsumerWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navBarController = ref.watch(navIndexProvider.notifier);
    final navBarIndex = ref.watch(navIndexProvider);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
      margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),

      decoration: BoxDecoration(
        color: ColorManager.instance.darkBLue,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavbarItem(
            onPress: () => navBarController.updateIndex(0),
            icon: Icons.location_on,
            iconColor:
                navBarIndex == 0
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.onSurface,
            iconSize:
                navBarIndex == 0
                    ? navBarController.selectedIconSize
                    : navBarController.unSelectedIconSize,
          ),
          NavbarItem(
            onPress: () => navBarController.updateIndex(1),
            icon: Icons.home,
            iconColor:
                navBarIndex == 1
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.onSurface,
            iconSize:
                navBarIndex == 1
                    ? navBarController.selectedIconSize
                    : navBarController.unSelectedIconSize,
          ),
          NavbarItem(
            onPress: () => navBarController.updateIndex(2),
            icon: Icons.person_outlined,
            iconColor:
                navBarIndex == 2
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.onSurface,
            iconSize:
                navBarIndex == 2
                    ? navBarController.selectedIconSize
                    : navBarController.unSelectedIconSize,
          ),
        ],
      ),
    );
  }
}
