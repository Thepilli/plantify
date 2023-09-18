// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:plantify/data/models/plant.dart';

@immutable
class PlantState extends Equatable {
  final List<Plant> plantState;

  const PlantState({required this.plantState});

  const PlantState.initial(List<Plant> plantState) : this(plantState: plantState);

  @override
  List<Object?> get props => [plantState];

  PlantState copyWith({
    List<Plant>? plantState,
  }) {
    return PlantState(
      plantState: plantState ?? this.plantState,
    );
  }
}
