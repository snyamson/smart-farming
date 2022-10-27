import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/onboarding_controller.dart';
import 'package:smart_farming/core/models/onboard_data.dart';
import 'package:smart_farming/routes/app_router.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/shared/widgets/button/onboarding_button.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        PageView.builder(
            onPageChanged: controller.currentIndex,
            controller: controller.pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: controller.onBoardData.length,
            itemBuilder: (context, position) {
              position = position;
              OnboardData data = controller.onBoardData[position];
              return Column(children: [
                const Spacer(),
                Image.asset(data.image),
                SizedBox(height: Dimensions.screenHeight / 11.128),
                Text(
                  data.title,
                  style: AppTypography.textSemiBold20,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: Dimensions.screenHeight / 46.984),
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width10 * 5,
                    right: Dimensions.width10 * 5,
                  ),
                  child: Text(
                    data.description,
                    style: AppTypography.textRegular15,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: Dimensions.screenHeight / 2.819)
              ]);
            }),
        Positioned(
          bottom: Dimensions.screenHeight / 3.677,
          child: Obx(() => DotsIndicator(
                position: controller.currentIndex.value.toDouble(),
                dotsCount: controller.onBoardData.length,
                decorator: DotsDecorator(
                  activeColor: AppColors.primaryColor,
                  size: Size.square(Dimensions.height10 - 1),
                  activeSize: Size(Dimensions.screenHeight / 46.984,
                      Dimensions.height10 - 2),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.radius5),
                  ),
                ),
              )),
        ),
        Positioned(
          right: Dimensions.screenHeight / 27.281,
          top: Dimensions.screenHeight / 9.834,
          child: GestureDetector(
            onTap: () {
              Get.offNamedUntil(AppRouter.getHomeRoute, (route) => false);
            },
            child: Text(
              'Skip',
              style: AppTypography.textRegular14
                  .copyWith(color: const Color(0xFF898989)),
            ),
          ),
        ),
        Positioned(
          bottom: Dimensions.screenHeight / 8.457,
          child: Obx(
            () => OnboardingButton(
                label: controller.isLastPage ? 'Done' : 'Next',
                onPressed: () {
                  controller.move();
                }),
          ),
        )
      ]),
    );
  }
}
