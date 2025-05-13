import 'package:flutter/material.dart';

class ActiveSharingScreenView extends StatelessWidget {
  const ActiveSharingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Active Sharing Screen',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
    );
  }
}