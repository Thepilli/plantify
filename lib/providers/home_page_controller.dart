import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_controller.g.dart';

@riverpod
class CategoryIndex extends _$CategoryIndex {
  @override
  int build() {
    return 0;
  }

  setSelectedIndex(int index) {
    state = index;
  }
}
