import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'root_page_controller.g.dart';

@riverpod
class rootNavigation extends _$rootNavigation {
  @override
  int build() {
    return 0;
  }

  void setIndex(int Index) {
    state = Index;
  }
}
