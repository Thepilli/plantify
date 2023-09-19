import 'package:flutter/material.dart';
import 'package:plantify/app/app_colors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'color_provider.g.dart';

@riverpod
class ColorChange extends _$ColorChange {
  bool isRed = false;
  @override
  Color build() {
    return isRed ? AppColors.gradient1 : AppColors.gradient3;
  }

  bool colorChange() {
    return !isRed;
  }
}
