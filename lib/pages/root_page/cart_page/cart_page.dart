import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plantify/app/app_colors.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/providers/cart_provider.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/widgets/jbox.dart';
import 'package:plantify/shared/widgets/my_app_bar.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ActionSliderController();

    double total = ref.watch(cartControllerProvider.notifier).calculateTotalPrice();
    final List<Plant> usercart = ref.watch(cartControllerProvider);
    String plural = usercart.length > 1 ? 'plants' : 'plant';
    return Scaffold(
      body: Column(
        children: [
          MyAppbar(
            title: 'Your cart',
            icon: Stack(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(99), color: context.secondary),
                  child: FittedBox(
                    child: Text(
                      usercart.length.toString(),
                      style: context.textTheme.bodySmall,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    ref.read(cartControllerProvider.notifier).removeAllPlantsFromCart();
                  },
                  icon: const FaIcon(FontAwesomeIcons.trashArrowUp),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 40),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), border: Border.all(color: context.primary)),
              child: usercart.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImagePath.add_cart,
                            height: 200,
                          ),
                          const Text(
                            'You you have no items in the cart',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            separatorBuilder: (context, index) => Divider(
                              color: context.primary,
                            ),
                            itemCount: usercart.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Dismissible(
                                onDismissed: (direction) {
                                  ref.read(cartControllerProvider.notifier).removePlantFromCart(usercart[index]);
                                },
                                key: ValueKey(usercart[index]),
                                child: ListTile(
                                  leading: SizedBox(
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration:
                                              BoxDecoration(shape: BoxShape.circle, color: context.primary.withOpacity(.6)),
                                          child: const SizedBox(),
                                        ),
                                        Image.asset(usercart[index].imageUrl)
                                      ],
                                    ),
                                  ),
                                  trailing: Text(
                                    '\$${usercart[index].price}',
                                    style: context.textTheme.titleSmall
                                        ?.copyWith(color: context.primary, fontWeight: FontWeight.w800),
                                  ),
                                  title: Text(usercart[index].plantName),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: AppColors.red.withOpacity(.2), borderRadius: BorderRadius.circular(99)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const FaIcon(
                                              FontAwesomeIcons.temperatureLow,
                                              size: 20,
                                              color: AppColors.red,
                                            ),
                                            Text(
                                              usercart[index].temperature,
                                              style: context.textTheme.bodySmall?.copyWith(color: AppColors.red),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const JBox(width: 10),
                                      Container(
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: AppColors.blue.withOpacity(.2), borderRadius: BorderRadius.circular(99)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const FaIcon(
                                              FontAwesomeIcons.droplet,
                                              size: 20,
                                              color: AppColors.blue,
                                            ),
                                            Text(
                                              '${usercart[index].humidity}%',
                                              style: context.textTheme.bodySmall?.copyWith(color: AppColors.blue),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Items:',
                                    style: context.textTheme.titleSmall,
                                  ),
                                  Text(
                                    '${usercart.length} $plural',
                                    style: context.textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total:',
                                    style: context.textTheme.titleLarge,
                                  ),
                                  Text(
                                    '\$${total.toStringAsFixed(2)}',
                                    style: context.textTheme.titleLarge,
                                  ),
                                ],
                              ),
                              const Divider(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ActionSlider.standard(
                            icon: const FaIcon(
                              FontAwesomeIcons.creditCard,
                              color: AppColors.white,
                            ),
                            rolling: true,
                            backgroundBorderRadius: BorderRadius.circular(99),
                            boxShadow: const [],
                            sliderBehavior: SliderBehavior.stretch,
                            width: context.sizeWidth,
                            toggleColor: context.primary,
                            action: (controller) async {
                              // controller.loading(); //starts loading animation
                              // await Future.delayed(const Duration(seconds: 3));
                              controller.success(); //starts success animation
                              await Future.delayed(const Duration(seconds: 2));

                              controller.reset(); //resets the slider
                            },
                            child: const Text('Slide to checkout'),
                          ),
                        ),
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}
