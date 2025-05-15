import 'package:betweener_app/providers/home_provider.dart';
import 'package:betweener_app/screens/home/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppHome extends ConsumerWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navBarindex = ref.watch(navIndexProvider);
    final navBarController = ref.watch(navIndexProvider.notifier);
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: navBarController.screens[navBarindex],
      )),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
