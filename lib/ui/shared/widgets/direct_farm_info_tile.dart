import 'package:flutter/material.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class DirectFarmInfoTile extends StatelessWidget {
  const DirectFarmInfoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Dimensions.height20),
      padding: EdgeInsets.all(Dimensions.height20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height10),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFe8e8e8),
              blurRadius: 5.0,
              offset: Offset(0, 5),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-5, 0),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(5, 0),
            )
          ]),
      child: Center(
        child: Text(
          'Introduction to Post-harvest Loss Management in Grains',
          style: AppTypography.textRegular15.copyWith(
            color: const Color(0xFF626262),
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
