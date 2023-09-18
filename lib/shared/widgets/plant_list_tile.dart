import 'package:flutter/material.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/pages/detail_page/detail_page.dart';
import 'package:plantify/shared/extensions/build_context.dart';

class PlantListTile extends StatelessWidget {
  const PlantListTile({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: context.secondary.withOpacity(.3), borderRadius: BorderRadius.circular(12)),
        child: ListTile(
            onTap: () {
              print(plant);
              Navigator.push(context, ModalBottomSheetRoute(builder: (context) => DetailPage(plant), isScrollControlled: true));
            },
            leading: SizedBox(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: context.primary.withOpacity(.6)),
                    child: const SizedBox(),
                  ),
                  Image.asset(plant.imageUrl)
                ],
              ),
            ),
            title: Text(
              plant.category,
              style: context.textTheme.bodyMedium,
            ),
            subtitle: Text(
              plant.plantName,
              style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              '\$${plant.price}',
              textAlign: TextAlign.center,
              style: context.textTheme.bodySmall?.copyWith(color: context.primary, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
