// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plantify/shared/extensions/build_context.dart';

import 'size_fade_switcher.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final String? errorText;
  final void Function(String) onChanged;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const MyTextField({
    super.key,
    required this.label,
    this.errorText,
    this.obscureText = false,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: onChanged,
          obscureText: obscureText,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: Colors.transparent)),
            label: Text(label),
            prefixIcon: prefixIcon,
            prefixIconColor: context.primary,
            suffixIcon: suffixIcon,
            suffixIconColor: context.primary,
          ),
        ),
        SizeFadeSwitcher(
          child: errorText != null
              ? Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(errorText!),
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}
