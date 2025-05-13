import 'package:flutter/material.dart';

class HomeSceenView extends StatelessWidget {
  const HomeSceenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Screen',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}