import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAppbar extends ConsumerWidget {
  final String title;
  final Widget icon;
  final Widget? leading;
  const MyAppbar({super.key, required this.title, required this.icon, this.leading});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(title),
      actions: [icon],
    );
  }
}
