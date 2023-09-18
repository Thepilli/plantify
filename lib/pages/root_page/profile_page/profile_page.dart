// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/shared/widgets/jbox.dart';
import 'package:plantify/shared/widgets/my_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppbar(title: "Profile", icon: Icons.notifications),
        CircleAvatar(
          backgroundImage: AssetImage(ImagePath.avatar),
          radius: 80,
        ),
        Text('Jiri Pillar'),
        Text('jiri.pillar@gmail.com'),
        JBox(height: 20),
        ProfileTile(label: 'My Profile', icon: Icons.person, onTap: () {}),
        ProfileTile(label: 'Settings', icon: Icons.settings, onTap: () {}),
        ProfileTile(label: 'Notifications', icon: Icons.notifications, onTap: () {}),
        ProfileTile(label: 'FAQs', icon: Icons.message, onTap: () {}),
        ProfileTile(label: 'Share', icon: Icons.share, onTap: () {}),
        ProfileTile(label: 'Log Out', icon: Icons.logout, onTap: () {}),
      ],
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  const ProfileTile({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      leading: Icon(icon),
      title: Text(label),
      trailing: IconButton(onPressed: onTap, icon: Icon(Icons.chevron_right)),
    );
  }
}
