import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farming/ui/shared/widgets/button/full_width_button.dart';
import 'package:smart_farming/ui/shared/widgets/button/onboarding_button.dart';
import 'package:smart_farming/ui/shared/widgets/product/product_tile.dart';

import '../../shared/widgets/button/small_button.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FullWidthButton(label: 'Label', onPressed: () {}),
              const SizedBox(height: 10),
              FullWidthButton(label: 'LABEL HERE', onPressed: () {}),
              SmallButton(label: 'label', onPressed: () {}),
              OnboardingButton(label: 'Get Started', onPressed: () {}),
              Lottie.asset(
                'assets/animations/loader.json',
                height: 100,
                width: 100,
              ),
              const ProductTile()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //elevation: 10,
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
                icon: Icon(FeatherIcons.home), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(FeatherIcons.shoppingCart), label: 'Shopping cart'),
            BottomNavigationBarItem(
                icon: Icon(FeatherIcons.heart), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(FeatherIcons.user), label: 'My Account'),
          ]),
    );
  }
}
