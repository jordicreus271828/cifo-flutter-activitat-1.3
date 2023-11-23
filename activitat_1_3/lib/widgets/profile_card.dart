import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final IconData iconData;
  final String label;
  final String value;

  const ProfileCard(
      {super.key,
      required this.iconData,
      required this.label,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Theme.of(context).colorScheme.tertiary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(iconData),
            Text(label),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
