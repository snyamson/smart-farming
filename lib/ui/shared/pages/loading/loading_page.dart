import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class LoadingPage extends StatelessWidget {
  final String? label;
  const LoadingPage({Key? key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/loader.json',
              height: Dimensions.height100,
              width: Dimensions.width100,
            ),
            SizedBox(height: Dimensions.height50),
            Text(
              label ?? 'Verifying Your Mobile Number',
              style: AppTypography.textRegular14
                  .copyWith(color: AppColors.loaderScreenTextColor),
            )
          ],
        ),
      ),
    );
  }
}
