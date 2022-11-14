import 'package:animations/animations.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/cart_controller.dart';
import 'package:smart_farming/core/controllers/main_controller.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/pages/account/account_page.dart';
import 'package:smart_farming/ui/pages/auth/register_page.dart';
import 'package:smart_farming/ui/pages/home/home_page.dart';
import 'package:smart_farming/ui/pages/shoppingCart/shopping_cart_page.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => PageTransitionSwitcher(
            transitionBuilder: (child, animation, secondaryAnimation) =>
                FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            ),
            child: IndexedStack(
              index: controller.currentIndex.value,
              children: const [
                HomePage(),
                ShoppingCartPage(),
                RegisterPage(),
                AccountPage()
              ],
            ),
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.currentIndex,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: const Color(0xFF838181),
            unselectedLabelStyle: AppTypography.textMedium10.copyWith(
              color: const Color(0xFF838181),
              height: 2,
            ),
            selectedLabelStyle: AppTypography.textMedium10.copyWith(height: 2),
            showUnselectedLabels: true,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(FeatherIcons.home),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Badge(
                  shape: BadgeShape.circle,
                  position: BadgePosition.topEnd(),
                  badgeColor: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(100),
                  badgeContent: Text(
                    Get.find<CartController>().cartItems.length.toString(),
                    style: AppTypography.textMedium14
                        .copyWith(color: Colors.white),
                  ),
                  child: const Icon(FeatherIcons.shoppingCart),
                ),
                label: 'Shopping cart',
              ),
              const BottomNavigationBarItem(
                icon: Icon(FeatherIcons.heart),
                label: 'Favorite',
              ),
              const BottomNavigationBarItem(
                icon: Icon(FeatherIcons.user),
                label: 'My Account',
              ),
            ]),
      ),
    );
  }
}
