import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/shared/widgets/button/full_width_button.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class EnterOtpPage extends StatelessWidget {
  const EnterOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height100 - Dimensions.height20,
                ),
                child: Text(
                  'Enter The 6 digit code that was\nsend to your Mobile Number',
                  style: AppTypography.textRegular14.copyWith(height: 2.5),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: Dimensions.height20 + Dimensions.height10),
              PinCodeTextField(
                appContext: context,
                length: 6,
                animationType: AnimationType.fade,
                keyboardType: const TextInputType.numberWithOptions(
                  signed: true,
                  decimal: false,
                ),
                enableActiveFill: true,
                cursorColor: AppColors.greyColor,
                pinTheme: PinTheme(
                  fieldHeight: Dimensions.height50,
                  fieldWidth: Dimensions.width100 / 2,
                  shape: PinCodeFieldShape.circle,
                  activeColor: AppColors.lightGreyColor,
                  selectedColor: AppColors.primaryColor,
                  inactiveColor: AppColors.lightGreyColor,
                  disabledColor: AppColors.greyColor,
                  activeFillColor: AppColors.lightGreyColor,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: AppColors.lightGreyColor,
                ),
                textStyle: AppTypography.textSemiBold20,
                onChanged: (value) {
                  print(value);
                },
                onCompleted: (value) {
                  print(value);
                },
              ),
              SizedBox(height: Dimensions.height20 + Dimensions.height10),
              FullWidthButton(label: 'VERIFY', onPressed: () {}),
              Container(
                padding: EdgeInsets.only(top: Dimensions.height10),
                margin: EdgeInsets.only(
                  right: Dimensions.width10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('resend code');
                      },
                      child: Text(
                        'Resend Again?',
                        style: AppTypography.textRegular12.copyWith(
                          color: const Color(0xFF7089F0),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
