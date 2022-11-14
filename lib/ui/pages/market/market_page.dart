import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/cart_controller.dart';
import 'package:smart_farming/core/controllers/product_controller.dart';
import 'package:smart_farming/ui/shared/widgets/product/product_list_tile.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('rebuilding');
    print(Get.find<CartController>().cartItems);
    return GetBuilder<ProductController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              left: Dimensions.width20,
              top: Dimensions.width20,
            ),
            child: Column(
              children: [
                Column(
                  children: controller.productCategory
                      .map(
                        (category) => ProductListTile(
                          category: category,
                          products: controller.products,
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      );

      // return SafeArea(
      //   child: Padding(
      //     padding: EdgeInsets.only(left: Dimensions.width20),
      //     child: GroupedListView<Product, String>(
      //       elements: controller.products,
      //       groupBy: (product) => product.category.name,
      //       groupHeaderBuilder: (product) => Container(
      //         margin: EdgeInsets.only(bottom: Dimensions.height15),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Row(
      //               children: [
      //                 Text(
      //                   product.category.name,
      //                   style: AppTypography.textSemiBold16
      //                       .copyWith(color: const Color(0xFF141313)),
      //                 ),
      //                 const SizedBox(width: 40),
      //                 Text(
      //                   '(${product.category.discount}% Off)',
      //                   style: AppTypography.textSemiBold12
      //                       .copyWith(color: const Color(0xFF4CA300)),
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(height: 7),
      //             Text(
      //               product.category.description,
      //               style: AppTypography.textRegular12
      //                   .copyWith(color: const Color(0xFF141313)),
      //             ),
      //           ],
      //         ),
      //       ),
      //       indexedItemBuilder: (context, element, index) {
      //         return SizedBox(
      //           height: 240,
      //           child: ListView.separated(
      //             physics: const BouncingScrollPhysics(),
      //             scrollDirection: Axis.horizontal,
      //             shrinkWrap: true,
      //             itemCount: 2,
      //             itemBuilder: (context, index) => GestureDetector(
      //               child: ProductTile(
      //                   product: controller.products
      //                       .where((product) =>
      //                           product.category.id == element.category.id)
      //                       .toList()[0]),
      //             ),
      //             separatorBuilder: (context, index) =>
      //                 SizedBox(width: Dimensions.width20),
      //           ),
      //         );
      //       },
      //     ),
      //   ),
      // );
    });
  }
}
