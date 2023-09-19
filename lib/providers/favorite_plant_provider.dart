import 'package:plantify/data/models/plant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_plant_provider.g.dart';

@Riverpod(keepAlive: false)
class FavoritePlant extends _$FavoritePlant {
  @override
  List<Plant> build() {
    return [];
  }

  void addToFavorite(List<Plant> plants, String plantId) {
    for (final plant in plants) {
      if (plant.plantId == plantId) {
        plant.isFavorite = true;
        break; // Stop searching once we've found the matching plant
      }
    }
    final result = plants.where((element) => element.isFavorite).toList();
    state = [...result];
  }

  void removeFromFavorite(String plantId) {
    for (var plant in state) {
      if (plant.plantId == plantId) {
        plant.isFavorite = false;
      }
    }
    final result = state.where((element) => element.isFavorite == true).toList();
    state = [...result];
  }
}
