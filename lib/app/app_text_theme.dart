import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTextTheme {
  //Simple text theme
  static TextTheme get lightTextTheme {
    return TextTheme(
      titleLarge: AppTextStyles.titleLarge.copyWith(color: AppColors.primaryLight), //30, 700,
      titleMedium: AppTextStyles.titleMedium.copyWith(color: AppColors.txtDark), //16, 900,
      titleSmall: AppTextStyles.titleSmall.copyWith(color: AppColors.txtDarkSec), //20, normal,
      bodyLarge: AppTextStyles.bodyLarge.copyWith(color: AppColors.txtDarkSec), //16, 500,
      bodyMedium: AppTextStyles.bodyMedium.copyWith(color: AppColors.txtDark), //14, 400,
      bodySmall: AppTextStyles.bodySmall.copyWith(color: AppColors.txtLight), //14 400,
    );
  }

  //Dark text theme
  static TextTheme get darkTextTheme {
    return TextTheme(
      titleLarge: AppTextStyles.titleLarge.copyWith(color: AppColors.txtLight), //30, 700,
      titleMedium: AppTextStyles.titleMedium.copyWith(color: AppColors.txtLight), //16, 900,
      titleSmall: AppTextStyles.titleSmall.copyWith(color: AppColors.txtLight), //20, normal,
      bodyLarge: AppTextStyles.bodyLarge.copyWith(color: AppColors.txtLightSec), //16, 500,
      bodyMedium: AppTextStyles.bodyMedium.copyWith(color: AppColors.txtLight), //14, 400,
      bodySmall: AppTextStyles.bodySmall.copyWith(color: AppColors.txtLightSec), //14, 400,
    );
  }
}
