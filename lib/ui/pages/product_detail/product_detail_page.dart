import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/product_controller.dart';
import 'package:smart_farming/core/models/product.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/shared/widgets/button/small_button.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class ProductDetailPage extends GetView<ProductController> {
  final Product product;
  const ProductDetailPage(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(FeatherIcons.chevronLeft),
        ),
        title: Text(
          'DETAIL',
          style: AppTypography.textMedium14,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(Dimensions.width20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              height: Dimensions.productImageContainerHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                image: DecorationImage(
                  image: AssetImage(
                    product.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              product.name,
              style: AppTypography.textSemiBold20
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              padding: EdgeInsets.only(left: Dimensions.width10),
              child: Text(
                'Soya Beans will provide natural nutrients. The  Chemical in organic soya beans which can be healthier hair and skin. It can be improve Your heart health. Protect your body from Cancer.',
                style: AppTypography.textRegular14.copyWith(
                  color: const Color(0xFF626262),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20 + Dimensions.height10),
            Text(
              'Nutrition',
              style: AppTypography.textSemiBold20
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              padding: EdgeInsets.only(left: Dimensions.width10),
              child: Text(
                'Soya Beans will provide natural nutrients. The  Chemical in organic soya beans which can be healthier hair and skin. It can be improve Your heart health. Protect your body from Cancer.',
                style: AppTypography.textRegular14.copyWith(
                  color: const Color(0xFF626262),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20 + Dimensions.height10),
            Text(
              'Additional Information',
              style: AppTypography.textSemiBold20
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              padding: EdgeInsets.only(left: Dimensions.width10),
              child: Text(
                'Soya Beans will provide natural nutrients. The  Chemical in organic soya beans which can be healthier hair and skin. It can be improve Your heart health. Protect your body from Cancer.',
                style: AppTypography.textRegular14.copyWith(
                  color: const Color(0xFF626262),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ghs 160 Per/ kg',
                  style: AppTypography.textSemiBold16
                      .copyWith(color: const Color(0xFF393939)),
                ),
                SmallButton(
                    label: 'Buy Now',
                    onPressed: () {
                      print('buy Now');
                      controller.addToCart(product);
                    }),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
