import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/app/app_colors.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/pages/root_page/home_page/home_page.dart';
import 'package:plantify/pages/root_page/profile_page/profile_page.dart';
import 'package:plantify/pages/root_page/root_page_controller.dart';
import 'package:plantify/pages/scan_page/scan_page.dart';
import 'package:plantify/shared/extensions/build_context.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int rootIndex = ref.watch(rootNavigationProvider);
    List<IconData> icons = [
      Icons.home,
      Icons.favorite,
      Icons.shopping_cart,
      Icons.person,
    ];

    // List<Plant> myFavorites = ref.watch(favoritePlantsProvider);
    // List<Plant> myCart = ref.watch(cartPlantProvider);

    List<Widget> _rootPages() {
      return [
        const HomePage(),
        // FavoritePage(addedToFavoritePlants: myFavorites),
        // CartPage(
        //   addedToCartPlants: myCart,
        // ),
        const ProfilePage(),
      ];
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.primary,
        onPressed: () {
          Navigator.push(context, ModalBottomSheetRoute(builder: (context) => const ScanPage(), isScrollControlled: true));
        },
        child: Image.asset(
          ImagePath.scan_two,
          height: 30,
        ),
      ),
      body: IndexedStack(
        index: rootIndex,
        children: _rootPages(),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        gapLocation: GapLocation.center,
        splashColor: context.primary,
        activeColor: context.primary,
        inactiveColor: AppColors.grey,
        notchSmoothness: NotchSmoothness.softEdge,
        splashSpeedInMilliseconds: 500,
        icons: icons,
        activeIndex: rootIndex,
        onTap: (index) {
          // ref.read(favoritePlantsProvider.notifier).getFavoritedPlants();
          // ref.read(cartPlantProvider.notifier).getCartPlants();
          return ref.read(rootNavigationProvider.notifier).setIndex(index);
        },
      ),
    );
  }
}
