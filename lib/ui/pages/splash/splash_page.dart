import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/splash_controller.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';

class SplashPage extends GetView {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: AppColors.primaryColorDeep,
        child: Center(
          child: Text(
            'Smart\nFarming',
            style: AppTypography.splashText,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
