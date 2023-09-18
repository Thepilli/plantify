import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/widgets/plant_list_tile.dart';

class CartPage extends ConsumerWidget {
  final List<Plant> addedToCartPlants;

  const CartPage({super.key, required this.addedToCartPlants});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // List<Plant> addedToCartPlants = ref.watch(cartPlantProvider);
    return Scaffold(
      body: addedToCartPlants.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImagePath.add_cart,
                    width: context.sizeWidth * .5,
                  ),
                  Text(
                    'Your cart is empty',
                    style: context.textTheme.titleSmall?.copyWith(color: context.primary),
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: addedToCartPlants.length,
              itemBuilder: (context, index) {
                Plant plant = addedToCartPlants[index];
                return PlantListTile(plant: plant);
              },
            ),
    );
  }
}
