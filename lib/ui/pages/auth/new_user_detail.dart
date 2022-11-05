import 'package:flutter/material.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/shared/widgets/button/full_width_button.dart';
import 'package:smart_farming/ui/shared/widgets/textinput_field.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class NewUserDetail extends StatelessWidget {
  const NewUserDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height100 - Dimensions.height20,
                  bottom: Dimensions.height20 - 3,
                  left: Dimensions.width10,
                ),
                child: Text(
                  'Enter Your Name',
                  style: AppTypography.textSemiBold16,
                ),
              ),
              const TextInputField(
                borderColor: Color(0xFFCCCCCC),
                keyboardType: TextInputType.name,
                placeholder: '',
                textSize: 14,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height20 + Dimensions.height10,
                  bottom: Dimensions.height20 - 3,
                  left: Dimensions.width10,
                ),
                child: Text(
                  'Add Address',
                  style: AppTypography.textSemiBold16,
                ),
              ),
              const TextInputField(
                borderColor: Color(0xFFCCCCCC),
                maxLines: 6,
                keyboardType: TextInputType.multiline,
                placeholder: '',
                textSize: 14,
              ),
              SizedBox(height: Dimensions.height50),
              FullWidthButton(label: 'SAVE', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
