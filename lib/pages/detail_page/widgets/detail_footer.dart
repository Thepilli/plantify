import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:plantify/app/app_colors.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/pages/detail_page/widgets/detail_footer_header.dart';
import 'package:plantify/pages/root_page/root_page_controller.dart';
import 'package:plantify/providers/cart_provider.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/util/toast.dart';
import 'package:plantify/shared/widgets/animated_button.dart';
import 'package:plantify/shared/widgets/circular_button.dart';
import 'package:plantify/shared/widgets/jbox.dart';

class DetailFooter extends ConsumerWidget {
  const DetailFooter({
    super.key,
    required this.plant,
  });
  final Plant plant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        height: context.sizeHeight * .45,
        decoration: BoxDecoration(
          color: context.primary.withOpacity(.3),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            BoxHeader(plant: plant),
            const JBox(height: 20),
            Text(
              plant.description,
              style: context.textTheme.bodyLarge,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularButton(
                  key: const ValueKey('cart_button'),
                  onTap: () {
                    ref.read(cartControllerProvider.notifier).addPlantToCart(plant);
                    context.pop();
                    showCustomToast('${plant.plantName} has been added to you cart');
                  },
                  icon: Icons.add_shopping_cart,
                  iconColor: AppColors.white,
                  buttoncolor: context.primary.withOpacity(.7),
                ),
                AnimatedButton(
                  onTap: () {
                    ref.read(cartControllerProvider.notifier).addPlantToCart(plant);
                    ref.read(rootNavigationProvider.notifier).setIndex(2);
                    context.pop();

                    showCustomToast('${plant.plantName} has been added to you cart');

                    // context.pushNamed(Routes.cart.name);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: context.primary, borderRadius: BorderRadius.circular(20)),
                    height: 50,
                    width: context.sizeWidth * .7,
                    child: Text(
                      'ORDER NOW',
                      style: context.textTheme.bodySmall,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
