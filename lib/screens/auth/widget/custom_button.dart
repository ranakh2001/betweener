import 'package:betweener_app/core/theme/color_manager.dart';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.bodySmall!.copyWith(color: ColorManager.instance.brown),
      ),
    );
  }
}
