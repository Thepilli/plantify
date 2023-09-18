// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/pages/onboarding_page/onboarding_controller.dart';
import 'package:plantify/router/app_router.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {
                context.pushNamed(Routes.root.name);
              },
              child: Text('Skip'))
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (value) => ref.read(pageIndexProvider.notifier).pageChanged(value),
            children: const [
              OnboardingView(title: AppStrings.titleOne, desc: AppStrings.descOne, image: ImagePath.plant_one),
              OnboardingView(title: AppStrings.titleTwo, desc: AppStrings.descTwo, image: ImagePath.plant_two),
              OnboardingView(title: AppStrings.titleThree, desc: AppStrings.descThree, image: ImagePath.plant_three),
            ],
          ),
          AnimatedSmoothIndicator(
            activeIndex: pageIndex,
            effect: JumpingDotEffect(verticalOffset: 30, activeDotColor: context.primary),
            count: 3,
          )
        ],
      ),
    );
  }
}

class OnboardingView extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  const OnboardingView({
    super.key,
    required this.title,
    required this.desc,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 350,
          ),
          Text(
            title,
            style: context.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          Text(desc, style: context.textTheme.titleSmall, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
