import 'package:plantify/data/models/plant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_button_provider.g.dart';

@riverpod
class FavoriteButton extends _$FavoriteButton {
  @override
  bool build() {
    return false;
  }

  void setFavoriteButton(Plant plant, bool isFavorite) {
    plant.isFavorite = !isFavorite;
    state = plant.isFavorite;
  }
}
