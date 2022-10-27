import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/models/onboard_data.dart';
import 'package:smart_farming/routes/app_router.dart';

class OnboardingController extends GetxController {
  late PageController pageController;
  var currentIndex = 0.obs;

  bool get isLastPage => currentIndex.value == onBoardData.length - 1;

  void move() {
    if (isLastPage) {
      Get.offNamedUntil(AppRouter.getHomeRoute, (route) => false);
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  final List<OnboardData> onBoardData = [
    const OnboardData(
      title: 'E Shopping',
      description:
          'Explore  top farm products & grab them at the comfort of your home',
      image: 'assets/images/onboarding_1.jpg',
    ),
    const OnboardData(
      title: 'Delivery on the way',
      description: 'Get your order by speed delivery',
      image: 'assets/images/onboarding_2.jpg',
    ),
    const OnboardData(
      title: 'Delivery Arrived',
      description: 'Order is arrived at your Place',
      image: 'assets/images/onboarding_3.jpg',
    )
  ];
}
