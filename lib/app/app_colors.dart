import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

//light

  static const primaryLight = Color(0xFF3B6D4C);
  static const secondaryLight = Color(0xFF60896F); //used for activated switchers
  static const backgroundLight = Color(0xFFABC1B3);
  static const scaffoldLight = Color(0xFFFFFFFF);

  static const chipColorLight = Color(0xFFDBE3FF);
  static const chipTextLight = Color(0xFF88A4E8);

  static const formFillLight = Color(0xFFE6EDEA);
  static const drawerShadowLight = Color(0xffE0E0E0);
  static const bottomSheetShadowLight = Color(0xffE0E0E0);
//dark

  static const primaryDark = Color(0xFF1DA2DC);
  static const secondaryDark = Color(0xFF2CCC18); //used for activated switchers
  static const backgroundDark = Color(0xFF2C3159);
  static const scaffoldDark = Color(0xFF25294A);

  static const chipColorDark = Color(0xFF8A96AB);
  static const chipTextDark = Color(0xFFAEC6F6);

  static const formFillDark = Color(0xFF40456D);
  static const bottomSheetDark = Color(0xff0E0E0E);
  static const bottomSheetShadowDark = Color(0xff1E1E1E);

  static const drawerDark = Color(0xff1A1A1A);
  static const drawerShadowDark = Color(0xff2A2A2A);

  //general

  static const white = Colors.white;
  static const black = Colors.black;
  static const red = Colors.red;
  static const blue = Colors.blue;
  static const yellow = Colors.yellow;
  static const green = Colors.green;
  static const orange = Colors.orange;
  static const purple = Colors.purple;
  static const grey = Color(0xFFABB2BF);

  //gradient
  static const gradient1 = Color(0xFFDA529C);
  static const gradient2 = Color(0xFFED8770);
  static const gradient3 = Color(0xFF9383AD);
  static const gradient4 = Color(0xFF2C3252);

  //util
  static const updateNotificationColorLight = Color(0xFF4CAF50); // Green color
  static const updateNotificationColorDark = Color(0xFF00796B); // Dark green color
  static const deleteNotificationColorLight = Color(0xFFE57373); // Red color
  static const deleteNotificationColorDark = Color(0xFFB71C1C); // Dark red color
  static const error = Color(0xFFB00020);
  static const ratingIconColor = Color(0xFFFFC319);
  static const completed = Color(0xFF47BB56);
  static const notCompleted = Color(0xFFFA4E5D);
  static const txtLight = Color(0xFFD6D3D3);
  static const txtLightSec = Color(0xFFBABABA);
  static const txtDark = Color(0xFF312E2D);
  static const txtDarkSec = Color(0xFF727272);

  static const backgroundColors = [
    Color(0xFFCCE5FF), // light blue
    Color(0xFFD7F9E9), // pale green
    Color(0xFFFFF8E1), // pale yellow
    Color(0xFFF5E6CC), // beige
    Color(0xFFFFD6D6), // light pink
    Color(0xFFE5E5E5), // light grey
    Color(0xFFFFF0F0), // pale pink
    Color(0xFFE6F9FF), // pale blue
    Color(0xFFD4EDDA), // mint green
    Color(0xFFFFF3CD), // pale orange
  ];
  static Color randomColor() {
    final random = Random();
    int randomIndex = random.nextInt(AppColors.backgroundColors.length);
    return AppColors.backgroundColors[randomIndex];
  }
}
