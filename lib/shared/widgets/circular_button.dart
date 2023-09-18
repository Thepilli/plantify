import 'package:flutter/material.dart';
import 'package:plantify/app/app_colors.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final double? width;
  final Color? iconColor;
  final Color? buttoncolor;
  final VoidCallback onTap;
  const CircularButton({
    super.key,
    required this.icon,
    this.width = 50,
    this.iconColor = AppColors.primaryLight,
    this.buttoncolor = AppColors.formFillLight,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: width,
      decoration: BoxDecoration(color: buttoncolor, borderRadius: BorderRadius.circular(99)),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon, color: iconColor),
      ),
    );
  }
}
