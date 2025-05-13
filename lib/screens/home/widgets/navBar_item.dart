// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  const NavbarItem({
    super.key,
    this.onPress,
    required this.icon,
    required this.iconColor,
    required this.iconSize,
  });
  final Function()? onPress;
  final IconData icon;
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      icon: Icon(icon, color: iconColor, size: iconSize),
    );
  }
}
