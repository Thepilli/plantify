import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/shared/extensions/build_context.dart';

class ScanPage extends ConsumerWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.scan,
              width: context.sizeWidth * .5,
            ),
            Text(
              'TAP TO SCAN',
              style: context.textTheme.titleLarge,
            )
          ],
        ),
      ),
    );
  }
}
