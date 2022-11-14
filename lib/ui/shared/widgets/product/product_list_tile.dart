import 'package:flutter/material.dart';
import 'package:smart_farming/core/models/product.dart';
import 'package:smart_farming/core/models/product_category.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/shared/widgets/product/product_tile.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class ProductListTile extends StatelessWidget {
  final ProductCategory category;
  final List<Product> products;
  const ProductListTile({
    Key? key,
    required this.category,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: Dimensions.height15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    category.name,
                    style: AppTypography.textSemiBold16
                        .copyWith(color: const Color(0xFF141313)),
                  ),
                  const SizedBox(width: 40),
                  Text(
                    '(${category.discount}% Off)',
                    style: AppTypography.textSemiBold12
                        .copyWith(color: const Color(0xFF4CA300)),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              Text(
                category.description,
                style: AppTypography.textRegular12
                    .copyWith(color: const Color(0xFF141313)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: products
                .where((product) => product.category.id == category.id)
                .length,
            itemBuilder: (context, index) => GestureDetector(
              child: ProductTile(
                  product: products
                      .where((product) => product.category.id == category.id)
                      .toList()[index]),
            ),
            separatorBuilder: (context, index) =>
                SizedBox(width: Dimensions.width20),
          ),
        ),
      ],
    );
  }
}
