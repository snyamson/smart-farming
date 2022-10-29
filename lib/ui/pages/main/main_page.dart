import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/main_controller.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/pages/account/account_page.dart';
import 'package:smart_farming/ui/pages/home/home_page.dart';
import 'package:smart_farming/ui/shared/pages/loading/done_loading_page.dart';
import 'package:smart_farming/ui/shared/pages/loading/loading_page.dart';

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
                LoadingPage(),
                DoneLoadingPage(),
                HomePage(),
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
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.home),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.shoppingCart),
                label: 'Shopping cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.heart),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.user),
                label: 'My Account',
              ),
            ]),
      ),
    );
  }
}
