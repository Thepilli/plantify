import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/pages/detail_page/detail_page.dart';
import 'package:plantify/providers/favorite_plant_provider.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/widgets/my_app_bar.dart';

class FavoritePage extends ConsumerWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritePlants = ref.watch(favoritePlantProvider);
    return Scaffold(
      body: Column(
        children: [
          const MyAppbar(title: 'Your favorite plants', icon: SizedBox()),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 40),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), border: Border.all(color: context.primary)),
              child: favoritePlants.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImagePath.noFav,
                            height: 200,
                          ),
                          const Text(
                            'You dont have any favorite plants\nGO and get some',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      itemCount: favoritePlants.length,
                      itemBuilder: (BuildContext context, int index) {
                        final favoritePlant = favoritePlants[index];
                        return ListTile(
                          onTap: () {
                            Navigator.push(context,
                                ModalBottomSheetRoute(builder: (context) => DetailPage(favoritePlant), isScrollControlled: true));
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
                                Image.asset(favoritePlant.imageUrl)
                              ],
                            ),
                          ),
                          title: Text(
                            favoritePlant.category,
                            style: context.textTheme.bodyMedium,
                          ),
                          subtitle: Text(
                            favoritePlant.plantName,
                            style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                ref.read(favoritePlantProvider.notifier).removeFromFavorite(favoritePlant.plantId);
                              },
                              icon: (const FaIcon(FontAwesomeIcons.heartCircleXmark))),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
