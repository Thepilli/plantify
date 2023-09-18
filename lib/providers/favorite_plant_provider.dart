import 'package:plantify/data/models/plant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_plant_provider.g.dart';

@riverpod
List<Plant> favoritePlant(FavoritePlantRef ref) {
  return [];
}
