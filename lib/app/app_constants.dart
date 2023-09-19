// ignore_for_file: constant_identifier_names

import 'package:plantify/data/models/plant.dart';

class AppStrings {
  static const String appName = "ThePilli Starter";

  static const String CURRENT_THEME = 'theme';
  static const String titleOne = "Learn more about plants";
  static const String titleTwo = "Find a plant lover friend";
  static const String titleThree = "Plant a tree, green the Earth";
  static const String descOne = 'Read how to care for plants in our rich plants guide';
  static const String descTwo = 'Are you a plant lover? Connect with other plant lovers';
  static const String descThree = 'Find almost all types of plants that you like here';
}

const animationDuration = Duration(milliseconds: 400);

class IconPath {
  static const String icn = 'assets/icons';
  static const String add_to_cart = '$icn/add_to_cart.svg';
  static const String back = '$icn/back.svg';
  static const String bag_1 = '$icn/bag_1.svg';
  static const String cart = '$icn/cart.svg';
  static const String heart = '$icn/heart.svg';
  static const String search = '$icn/search.svg';
}

class ImagePath {
  static const String img = 'assets/images';
  static const String avatar = '$img/avatar.png';
  static const String rect = '$img/rect.png';
  static const String rect_h = '$img/rect_h.png';
  static const String rect_v = '$img/rect_v.png';
  static const String rect_trans = '$img/rect_trans.png';
  static const String plant_one = '$img/plant-one.png';
  static const String plant_two = '$img/plant-two.png';
  static const String plant_three = '$img/plant-three.png';
  static const String plant_four = '$img/plant-four.png';
  static const String plant_five = '$img/plant-five.png';
  static const String plant_six = '$img/plant-six.png';
  static const String plant_seven = '$img/plant-seven.png';
  static const String plant_eight = '$img/plant-eight.png';
  static const String scan_two = '$img/code-scan-two.png';
  static const String favorited = '$img/favorited.png';
  static const String add_cart = '$img/add-cart.png';
  static const String scan = '$img/code-scan.png';
  static const String signin = '$img/signin.png';
  static const String signup = '$img/signup.png';
  static const String password_reset = '$img/reset-password.png';
  static const String google = '$img/google.png';
  static const String noFav = '$img/noFav.png';
}

List<Plant> plantList = [
  Plant(
      plantId: '1',
      price: 33,
      category: 'Indoor',
      plantName: 'Sanseviera',
      size: 'Small',
      rating: 4.5,
      humidity: 34,
      temperature: '23 - 34',
      imageUrl: 'assets/images/plant-one.png',
      isFavorite: false,
      description: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
          'even the harshest weather condition.',
      isSelected: false),
  Plant(
      plantId: '2',
      price: 11,
      category: 'Outdoor',
      plantName: 'Philodendron',
      size: 'Medium',
      rating: 4.8,
      humidity: 56,
      temperature: '19 - 22',
      imageUrl: 'assets/images/plant-two.png',
      isFavorite: false,
      description: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
          'even the harshest weather condition.',
      isSelected: false),
  Plant(
      plantId: '3',
      price: 18,
      category: 'Indoor',
      plantName: 'Beach Daisy',
      size: 'Large',
      rating: 4.7,
      humidity: 34,
      temperature: '22 - 25',
      imageUrl: 'assets/images/plant-three.png',
      isFavorite: false,
      description: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
          'even the harshest weather condition.',
      isSelected: false),
  Plant(
      plantId: '4',
      price: 24,
      category: 'Recommended',
      plantName: 'Big Bluestem',
      size: 'Large',
      rating: 4.1,
      humidity: 66,
      temperature: '12 - 16',
      imageUrl: 'assets/images/plant-four.png',
      isFavorite: false,
      description: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
          'even the harshest weather condition.',
      isSelected: false),
  Plant(
      plantId: '5',
      price: 24,
      category: 'Outdoor',
      plantName: 'Meadow Sage',
      size: 'Medium',
      rating: 4.4,
      humidity: 36,
      temperature: '15 - 18',
      imageUrl: 'assets/images/plant-five.png',
      isFavorite: false,
      description: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
          'even the harshest weather condition.',
      isSelected: false),
  Plant(
      plantId: '6',
      price: 19,
      category: 'Garden',
      plantName: 'Plumbago',
      size: 'Small',
      rating: 4.2,
      humidity: 46,
      temperature: '23 - 26',
      imageUrl: 'assets/images/plant-six.png',
      isFavorite: false,
      description: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
          'even the harshest weather condition.',
      isSelected: false),
  Plant(
      plantId: '8',
      price: 46,
      category: 'Recommended',
      plantName: 'Tritonia',
      size: 'Medium',
      rating: 4.7,
      humidity: 46,
      temperature: '21 - 25',
      imageUrl: 'assets/images/plant-eight.png',
      isFavorite: false,
      description: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
          'even the harshest weather condition.',
      isSelected: false),
];
