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
  static const String add_to_cart = 'assets/icons/add_to_cart.svg';
  static const String back = 'assets/icons/back.svg';
  static const String bag_1 = 'assets/icons/bag_1.svg';
  static const String cart = 'assets/icons/cart.svg';
  static const String heart = 'assets/icons/heart.svg';
  static const String search = 'assets/icons/search.svg';
}

class ImagePath {
  static const String avatar = 'assets/images/avatar.png';
  static const String rect = 'assets/images/rect.png';
  static const String rect_h = 'assets/images/rect_h.png';
  static const String rect_v = 'assets/images/rect_v.png';
  static const String rect_trans = 'assets/images/rect_trans.png';
  static const String plant_one = 'assets/images/plant-one.png';
  static const String plant_two = 'assets/images/plant-two.png';
  static const String plant_three = 'assets/images/plant-three.png';
  static const String plant_four = 'assets/images/plant-four.png';
  static const String plant_five = 'assets/images/plant-five.png';
  static const String plant_six = 'assets/images/plant-six.png';
  static const String plant_seven = 'assets/images/plant-seven.png';
  static const String plant_eight = 'assets/images/plant-eight.png';
  static const String scan_two = 'assets/images/code-scan-two.png';
  static const String favorited = 'assets/images/favorited.png';
  static const String add_cart = 'assets/images/add-cart.png';
  static const String scan = 'assets/images/code-scan.png';
  static const String signin = 'assets/images/signin.png';
  static const String signup = 'assets/images/signup.png';
  static const String password_reset = 'assets/images/reset-password.png';
  static const String google = 'assets/images/google.png';
}

List<Plant> plantList = [
  Plant(
      plantId: '0',
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
      plantId: '1',
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
      plantId: '2',
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
      plantId: '3',
      price: 30,
      category: 'Outdoor',
      plantName: 'Big Bluestem',
      size: 'Small',
      rating: 4.5,
      humidity: 35,
      temperature: '23 - 28',
      imageUrl: 'assets/images/plant-one.png',
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
      plantId: '7',
      price: 23,
      category: 'Garden',
      plantName: 'Tritonia',
      size: 'Medium',
      rating: 4.5,
      humidity: 34,
      temperature: '21 - 24',
      imageUrl: 'assets/images/plant-seven.png',
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
