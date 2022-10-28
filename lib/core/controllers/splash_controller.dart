import 'dart:async';

import 'package:get/get.dart';
import 'package:smart_farming/routes/app_router.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 3), route);
    super.onInit();
  }

  void route() {
    Get.offNamed(AppRouter.getOnboardingRoute);
  }
}
