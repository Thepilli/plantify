import 'package:plantify/data/models/plant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_button_provider.g.dart';

@riverpod
class CartButton extends _$CartButton {
  @override
  bool build() {
    return false;
  }

  void addToCart(Plant plant, bool isSelected) {
    plant.isSelected = !isSelected;
    state = plant.isSelected;
    print('seldet $state');
  }
}
