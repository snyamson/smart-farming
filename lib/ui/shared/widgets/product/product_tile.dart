import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/pages/product_detail/product_detail_page.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            OpenContainer(
                closedElevation: 0,
                openElevation: 0,
                openColor: Colors.transparent,
                closedColor: Colors.transparent,
                //transitionDuration: const Duration(seconds: 1),
                transitionType: ContainerTransitionType.fade,
                openShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
                closedShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
                closedBuilder: (context, action) => Container(
                      height: Dimensions.productTileContainerHeight,
                      width: Dimensions.productTileContainerWidth,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/fresh_corn.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                openBuilder: (context, action) => const ProductDetailPage()),
            Positioned(
              top: (Dimensions.height10 - 1) / 3,
              right: Dimensions.height10,
              child: GestureDetector(
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius10 * 2),
                  ),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: Dimensions.iconSize18,
                    color: AppColors.iconBorderColor,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: Dimensions.height10 / 2),
        Wrap(
          children: List<Widget>.generate(
            5,
            (index) => Icon(
              Icons.star,
              size: Dimensions.iconSize12,
              color: AppColors.yellowColor,
            ),
          ),
        ),
        SizedBox(height: Dimensions.height10 / 2),
        Text('Soya Beans', style: AppTypography.textMedium14),
        SizedBox(height: Dimensions.height10 / 2),
        Text('Ghs 200 Per/ kg', style: AppTypography.textSemiBold12),
      ],
    );
  }
}
