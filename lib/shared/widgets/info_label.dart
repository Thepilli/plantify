import 'package:flutter/material.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/widgets/jbox.dart';

class InfoLabels extends StatelessWidget {
  final String label;
  final String value;

  const InfoLabels({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: context.textTheme.bodyMedium),
        Text(value, style: context.textTheme.titleMedium?.copyWith(color: context.primary)),
        const JBox(
          height: 35,
        )
      ],
    );
  }
}
