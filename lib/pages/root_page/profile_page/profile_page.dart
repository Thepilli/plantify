import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/pages/root_page/profile_page/color_provider.dart';
import 'package:plantify/shared/widgets/jbox.dart';
import 'package:plantify/shared/widgets/my_app_bar.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color color = ref.watch(colorChangeProvider);
    return Column(
      children: [
        const MyAppbar(title: "Profile", icon: Icon(Icons.notifications)),
        const CircleAvatar(
          backgroundImage: AssetImage(ImagePath.avatar),
          radius: 80,
        ),
        const Text('Jiri Pillar'),
        const Text('jiri.pillar@gmail.com'),
        const JBox(height: 20),
        ProfileTile(label: 'My Profile', icon: Icons.person, onTap: () {}),
        ProfileTile(label: 'Settings', icon: Icons.settings, onTap: () {}),
        ProfileTile(label: 'Notifications', icon: Icons.notifications, onTap: () {}),
        ProfileTile(label: 'FAQs', icon: Icons.message, onTap: () {}),
        ProfileTile(label: 'Share', icon: Icons.share, onTap: () {}),
        ProfileTile(label: 'Log Out', icon: Icons.logout, onTap: () {}),
        ElevatedButton(
          child: const Text('showModalBottomSheet'),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return const SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('GeeksforGeeks'),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 2),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          color: color,
          child: IconButton(
            icon: const Icon(Icons.abc),
            onPressed: () {
              ref.read(colorChangeProvider.notifier).colorChange();
            },
          ),
        )
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
      trailing: IconButton(onPressed: onTap, icon: const Icon(Icons.chevron_right)),
    );
  }
}
