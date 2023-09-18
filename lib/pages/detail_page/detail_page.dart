// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:plantify/data/models/plant.dart';
import 'package:plantify/pages/detail_page/widgets/detail_footer.dart';
import 'package:plantify/providers/cart_button_provider.dart';
import 'package:plantify/providers/favorite_button_provider.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/widgets/circular_button.dart';
import 'package:plantify/shared/widgets/info_label.dart';

class DetailPage extends ConsumerWidget {
  final Plant plant;
  const DetailPage(
    this.plant, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isSelected = ref.watch(cartButtonProvider);
    bool isFavorite = ref.watch(favoriteButtonProvider);
    print('fav $isFavorite');
    print('sel $isSelected');

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            //footer container
            DetailFooter(plant: plant, isSelected: isSelected),
            //top buttons
            Positioned(
              top: 10,
              left: 10,
              child: CircularButton(
                onTap: () => context.pop(),
                icon: Icons.close,
                buttoncolor: context.primary.withOpacity(.3),
              ),
            ),
            //top buttons
            Positioned(
              top: 10,
              right: 10,
              child: CircularButton(
                key: ValueKey('favorite_button'),
                onTap: () {
                  ref.read(favoriteButtonProvider.notifier).setFavoriteButton(plant, isFavorite);
                },
                icon: isFavorite ? Icons.favorite : Icons.favorite_border,
                buttoncolor: context.primary.withOpacity(.3),
              ),
            ),
            //body
            GestureDetector(
              onHorizontalDragEnd: (details) => context.pop(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 100, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: plant.plantId,
                      child: Image.asset(
                        plant.imageUrl,
                        height: context.sizeHeight * .45,
                        width: context.sizeWidth * .55,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoLabels(label: 'Size', value: plant.size),
                        InfoLabels(label: 'Humidity', value: '${plant.humidity}'),
                        InfoLabels(label: 'Temperature', value: plant.temperature)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
