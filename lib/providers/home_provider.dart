import 'package:betweener_app/screens/home/active_sharing_screen/active_sharing_screen_view.dart';
import 'package:betweener_app/screens/home/home_screen/home_sceen_view.dart';
import 'package:betweener_app/screens/home/profile_screen/profile_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// nav bar index provider
// This provider holds the index of the currently selected item in the bottom navigation bar.

final navIndexProvider = StateNotifierProvider<NavIndexController, int>(
  (ref) => NavIndexController(),
);

class NavIndexController extends StateNotifier<int> {
  NavIndexController() : super(1); // Default index is set to 1 (Home screen)

  double unSelectedIconSize = 24.0;
  double selectedIconSize = 28.0;

  List<Widget> screens = [
    ActiveSharingScreenView(),
    HomeSceenView(),
    ProfileScreenView(),
  ];

  // Method to update the index
  void updateIndex(int index) {
    state = index;
  }
}
