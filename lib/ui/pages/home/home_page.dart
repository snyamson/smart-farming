import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farming/core/controllers/home_controller.dart';
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
    );
  }
}
