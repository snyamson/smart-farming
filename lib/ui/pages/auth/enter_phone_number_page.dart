import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_farming/ui/shared/pages/loading/done_loading_page.dart';
import 'package:smart_farming/ui/shared/pages/loading/loading_page.dart';
import 'package:smart_farming/ui/shared/widgets/button/full_width_button.dart';
import 'package:smart_farming/ui/shared/widgets/textinput_field.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class EnterPhoneNumberPage extends StatelessWidget {
  const EnterPhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextInputField(textSize: 16),
                SizedBox(height: Dimensions.height100 - Dimensions.height10),
                FullWidthButton(
                    label: 'VERIFY',
                    onPressed: () {
                      Get.to(() => const LoadingPage());
                      Timer(const Duration(seconds: 3), () {
                        Get.off(() => const LoadingPage());
                        Get.to(() => const DoneLoadingPage());
                      });
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
