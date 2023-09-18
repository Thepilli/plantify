// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

typedef PlantID = String;

class Plant extends Equatable {
  final String plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageUrl;
  bool isFavorite;
  final String description;
  bool isSelected;
  Plant({
    required this.plantId,
    required this.price,
    required this.size,
    required this.rating,
    required this.humidity,
    required this.temperature,
    required this.category,
    required this.plantName,
    required this.imageUrl,
    required this.isFavorite,
    required this.description,
    required this.isSelected,
  });

  //List of Plants data

//   //Get the favorated items
//   static List<Plant> getFavoritedPlants() {
//     List<Plant> favoritePlants = Plant.plants;
//     return favoritePlants.where((element) => element.isFavorite == true).toList();
//   }
//
//   //Get the cart items
//   static List<Plant> getCartPlants() {
//     List<Plant> cartPlants = Plant.plants;
//     return cartPlants.where((element) => element.isSelected == true).toList();
//   }

  Plant copyWith({
    String? plantId,
    int? price,
    String? size,
    double? rating,
    int? humidity,
    String? temperature,
    String? category,
    String? plantName,
    String? imageUrl,
    bool? isFavorite,
    String? description,
    bool? isSelected,
  }) {
    return Plant(
      plantId: plantId ?? this.plantId,
      price: price ?? this.price,
      size: size ?? this.size,
      rating: rating ?? this.rating,
      humidity: humidity ?? this.humidity,
      temperature: temperature ?? this.temperature,
      category: category ?? this.category,
      plantName: plantName ?? this.plantName,
      imageUrl: imageUrl ?? this.imageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
      description: description ?? this.description,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plantId': plantId,
      'price': price,
      'size': size,
      'rating': rating,
      'humidity': humidity,
      'temperature': temperature,
      'category': category,
      'plantName': plantName,
      'imageUrl': imageUrl,
      'isFavorite': isFavorite,
      'description': description,
      'isSelected': isSelected,
    };
  }

  factory Plant.fromMap(Map<String, dynamic> map) {
    return Plant(
      plantId: map['plantId'] as String,
      price: map['price'] as int,
      size: map['size'] as String,
      rating: map['rating'] as double,
      humidity: map['humidity'] as int,
      temperature: map['temperature'] as String,
      category: map['category'] as String,
      plantName: map['plantName'] as String,
      imageUrl: map['imageUrl'] as String,
      isFavorite: map['isFavorite'] as bool,
      description: map['description'] as String,
      isSelected: map['isSelected'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Plant.fromJson(String source) => Plant.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      plantId,
      price,
      size,
      rating,
      humidity,
      temperature,
      category,
      plantName,
      imageUrl,
      isFavorite,
      description,
      isSelected,
    ];
  }
}
