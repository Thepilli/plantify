import 'package:plantify/data/models/plant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_provider.g.dart';

@riverpod
class CartController extends _$CartController {
  @override
  List<Plant> build() {
    return [];
  }

//list of plants in cart
  List<Plant> cart = [];

//add plant to cart
  void addPlantToCart(Plant plant) {
    cart.add(plant);
    state = [...cart];
  }

//remove plant from cart
  void removePlantFromCart(Plant plant) {
    cart.remove(plant);
    state = [...cart];
  }

  //remove all items
  void removeAllPlantsFromCart() {
    cart = [];
    state = cart;
  }

  //calculate total
  calculateTotalPrice() {
    double totalPrice = 0.0;
    if (state.isNotEmpty) {
      for (var item in state) {
        totalPrice += item.price;
      }
    }
    return totalPrice;
  }
}
