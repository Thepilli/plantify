import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/app/app_colors.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/pages/detail_page/detail_page.dart';
import 'package:plantify/providers/favorite_plant_provider.dart';
import 'package:plantify/providers/home_page_controller.dart';
import 'package:plantify/shared/extensions/build_context.dart';

class CategoryView extends ConsumerWidget {
  const CategoryView(
    this.plants, {
    super.key,
    required this.plantTypes,
    required this.categoryIndex,
  });

  final List<String> plantTypes;
  final List<Plant> plants;

  final int categoryIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Plant> favoritePlants = ref.watch(favoritePlantProvider);
    int categoryIndex = ref.watch(categoryIndexProvider);
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: context.sizeWidth,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: plantTypes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    ref.read(categoryIndexProvider.notifier).setSelectedIndex(index);
                  },
                  child: Chip(
                    surfaceTintColor: AppColors.backgroundDark,
                    backgroundColor: categoryIndex == index ? context.primary : Colors.transparent,
                    label: Text(
                      plantTypes[index],
                      style: context.textTheme.bodyMedium
                          ?.copyWith(color: categoryIndex == index ? AppColors.white : context.primary),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: context.sizeHeight * .30,
          width: context.sizeWidth,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: plants.length,
            itemBuilder: (BuildContext context, int index) {
              Plant plant = plants[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage(plant)),
                    );
                  },
                  child: Container(
                    width: context.sizeWidth * .45,
                    decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Hero(
                          tag: plant.imageUrl,
                          child: Image.asset(
                            plant.imageUrl,
                            height: context.sizeHeight * .18,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 40,
                            decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              '\$${plant.price}',
                              textAlign: TextAlign.center,
                              style: context.textTheme.bodySmall?.copyWith(color: context.primary),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                plant.category,
                                style: context.textTheme.bodySmall,
                              ),
                              Text(
                                plant.plantName,
                                style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(99)),
                            child: IconButton(
                                onPressed: plant.isFavorite
                                    ? () {
                                        ref.read(favoritePlantProvider.notifier).removeFromFavorite(plant.plantId);
                                      }
                                    : () {
                                        ref.read(favoritePlantProvider.notifier).addToFavorite(plants, plant.plantId);
                                      },
                                icon: Icon(
                                  plant.isFavorite ? Icons.favorite : Icons.favorite_border,
                                  color: context.primary,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
