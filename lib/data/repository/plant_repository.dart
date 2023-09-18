import 'package:plantify/app/app_constants.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/shared/util/in_memory_store.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'plant_repository.g.dart';

class PlantsRepository {
  PlantsRepository();

  final _plants = InMemoryStore<List<Plant>>(List.from(plantList));

  List<Plant> getPlantsList() {
    return _plants.value;
  }

  Plant? getPlant(String id) {
    return _getPlant(_plants.value, id);
  }

  Future<List<Plant>> fetchPlantsList() async {
    return Future.value(_plants.value);
  }

  Stream<List<Plant>> watchPlantsList() {
    return _plants.stream;
  }

  Stream<Plant?> watchPlant(String id) {
    return watchPlantsList().map((plants) => _getPlant(plants, id));
  }

  static Plant? _getPlant(List<Plant> plants, String id) {
    try {
      return plants.firstWhere((plant) => plant.plantId == id);
    } catch (e) {
      return null;
    }
  }
}

@riverpod
PlantsRepository plantsRepository(PlantsRepositoryRef ref) {
  return PlantsRepository();
}

@riverpod
Stream<List<Plant>> plantListStream(PlantListStreamRef ref) {
  final plantsRepository = ref.watch(plantsRepositoryProvider);
  return plantsRepository.watchPlantsList();
}

@riverpod
Future<List<Plant>> plantListFuture(PlantListFutureRef ref) {
  final plantsRepository = ref.watch(plantsRepositoryProvider);
  return plantsRepository.fetchPlantsList();
}

@riverpod
Stream<Plant?> plant(PlantRef ref, String id) {
  final plantsRepository = ref.watch(plantsRepositoryProvider);
  return plantsRepository.watchPlant(id);
}
