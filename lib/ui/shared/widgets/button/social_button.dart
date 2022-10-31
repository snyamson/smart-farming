import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class SocialButton extends StatelessWidget {
  final bool? isFacebook;
  final String label;
  final VoidCallback onPressed;
  const SocialButton(
      {Key? key, this.isFacebook, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF707070),
            ),
            borderRadius: BorderRadius.circular(Dimensions.radius10),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: Dimensions.width20 - 2,
                  left: Dimensions.width10 - 3,
                ),
                child: SvgPicture.asset(
                  isFacebook == true
                      ? 'assets/icons/facebook.svg'
                      : 'assets/icons/google.svg',
                  height: 20,
                  width: 20,
                  fit: BoxFit.cover,
                ),
              ),
              Text(label, style: AppTypography.textRegular12)
            ],
          ),
        ),
      ),
    );
  }
}
