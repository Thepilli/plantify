import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/widgets/plant_list_tile.dart';

class FavoritePage extends ConsumerWidget {
  final List<Plant> addedToFavoritePlants;
  const FavoritePage({super.key, required this.addedToFavoritePlants});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // List<Plant> addedToFavoritePlants = ref.watch(favoritePlantsProvider);
    return Scaffold(
      body: addedToFavoritePlants.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImagePath.favorited,
                    width: context.sizeWidth * .5,
                  ),
                  Text(
                    'You have no favorite plants',
                    style: context.textTheme.titleSmall?.copyWith(color: context.primary),
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: addedToFavoritePlants.length,
              itemBuilder: (context, index) {
                Plant plant = addedToFavoritePlants[index];
                return PlantListTile(plant: plant);
              },
            ),
    );
  }
}
