import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/data/repository/plant_repository.dart';
import 'package:plantify/pages/root_page/home_page/widgets/home_category_view.dart';
import 'package:plantify/providers/home_page_controller.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/widgets/my_app_bar.dart';
import 'package:plantify/shared/widgets/my_search_bar.dart';
import 'package:plantify/shared/widgets/plant_list_tile.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // List<Plant> plants = plantList;
    List<Plant> plants = ref.watch(plantsRepositoryProvider).getPlantsList();

    int categoryIndex = ref.watch(categoryIndexProvider);
    List<String> plantTypes = [
      'Recommended',
      'Indoor',
      'Outdoor',
      'Garden',
      'Supplement',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyAppbar(title: 'Home', icon: Icons.notifications),
        const MySearchBar(),
        CategoryView(plants, plantTypes: plantTypes, categoryIndex: categoryIndex),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'New Plants',
            style: context.textTheme.titleMedium,
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: plants.length,
            itemBuilder: (context, index) {
              Plant plant = plants[index];
              return PlantListTile(plant: plant);
            },
          ),
        )
      ],
    );
  }
}
