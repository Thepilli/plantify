import 'package:flutter/material.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/shared/extensions/build_context.dart';

class BoxHeader extends StatelessWidget {
  const BoxHeader({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plant.plantName,
              style: context.textTheme.titleLarge,
            ),
            Text(
              '\$${plant.price}',
              style: context.textTheme.titleMedium?.copyWith(fontSize: 20),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '${plant.rating}',
              style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.normal),
            ),
            Icon(
              Icons.star,
              color: context.primary,
              size: 30,
            )
          ],
        ),
      ],
    );
  }
}
