// import 'package:plantify/data/models/plant.dart';
// import 'package:plantify/data/repository/plant_repository.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// 
// part 'cart_provider.g.dart';
// 
// @Riverpod(keepAlive: true)
// class CartPlant extends _$CartPlant {
//   @override
//   List<Plant> build() {
//     return [];
//   }
// 
//   void getCartPlants() {
//     List<Plant> cartPlants = PlantRepository().getPlantList;
//     state = cartPlants.where((element) => element.isSelected == true).toList();
//   }
// }
