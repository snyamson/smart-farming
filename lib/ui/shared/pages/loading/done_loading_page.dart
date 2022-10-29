import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class DoneLoadingPage extends StatelessWidget {
  final String? label;
  const DoneLoadingPage({Key? key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/done_checkmark.svg',
              height: Dimensions.height100,
              width: Dimensions.width100,
            ),
            SizedBox(height: Dimensions.height50),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 87),
              child: Text(
                label ??
                    'Verification Code Sent on your Registered Mobile Number ',
                textAlign: TextAlign.center,
                style: AppTypography.textRegular14
                    .copyWith(color: AppColors.loaderScreenTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
