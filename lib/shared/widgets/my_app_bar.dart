import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  final String title;
  final IconData icon;
  const MyAppbar({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(title),
      actions: [
        Icon(
          icon,
          size: 35,
        )
      ],
    );
  }
}
