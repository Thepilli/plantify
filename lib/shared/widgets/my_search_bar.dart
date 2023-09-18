import 'package:flutter/material.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/widgets/my_text_field.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sizeWidth * .9,
      child: MyTextField(
        suffixIcon: const Icon(
          Icons.mic,
          size: 30,
        ),
        prefixIcon: const Icon(Icons.search, size: 30),
        label: 'Search Plant',
        onChanged: (p0) {},
      ),
    );
  }
}
