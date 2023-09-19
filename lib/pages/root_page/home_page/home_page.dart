import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/data/repository/plant_repository.dart';
import 'package:plantify/pages/root_page/home_page/widgets/home_category_view.dart';
import 'package:plantify/pages/root_page/root_page_controller.dart';
import 'package:plantify/providers/cart_provider.dart';
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
    final List<Plant> usercart = ref.watch(cartControllerProvider);

    int categoryIndex = ref.watch(categoryIndexProvider);
    List<String> plantTypes = [
      'Recommended',
      'Indoor',
      'Outdoor',
      'Garden',
      'Supplement',
    ];

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyAppbar(
            title: 'Home',
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
                    ref.read(rootNavigationProvider.notifier).setIndex(2);
                  },
                  icon: const FaIcon(FontAwesomeIcons.cartShopping),
                ),
              ],
            ),
          ),
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
      ),
    );
  }
}
