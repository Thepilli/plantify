import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_controller.g.dart';

@riverpod
class PageIndex extends _$PageIndex {
  @override
  int build() {
    return 0;
  }

  void pageChanged(int index) {
    state = index;
  }

  void skipToLast() {
    state = 2;
  }
}
