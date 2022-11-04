import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/auth_controller.dart';
import 'package:smart_farming/routes/app_router.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/shared/widgets/button/social_button.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class RegisterPage extends GetView<AuthController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/icons/logo.png',
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: Dimensions.height50),
            phoneButton(onPressed: () {
              Get.toNamed(AppRouter.getEnterPhoneRoute);
            }),
            SizedBox(height: Dimensions.height50 + Dimensions.height10),
            Text('OR', style: AppTypography.textMedium14),
            SizedBox(height: Dimensions.height50 + Dimensions.height10),
            Row(
              children: [
                SocialButton(
                  label: 'Log in with Google',
                  onPressed: () async {
                    controller.signInWithGoogle();
                  },
                ),
                SizedBox(width: Dimensions.width20),
                SocialButton(
                  label: 'Log in with Facebook',
                  isFacebook: true,
                  onPressed: () {},
                )
              ],
            ),
            const SizedBox(height: 126)
          ],
        ),
      ),
    );
  }

  ElevatedButton phoneButton({required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius10),
        ),
        side: const BorderSide(
          color: Color(0xFF707070),
        ),
        minimumSize: Size.fromHeight(Dimensions.height50),
      ),
      child: Text(
        'Enter Your Mobile Number',
        style: AppTypography.textRegular12
            .copyWith(color: const Color(0xFF393939)),
      ),
    );
  }
}
