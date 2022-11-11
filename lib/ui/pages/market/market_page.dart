import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/shared/widgets/product/product_tile.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class MarketPage extends StatelessWidget {
  MarketPage({Key? key}) : super(key: key);

  List elements = [
    {
      'name': 'John',
      'group': 'Soya Beans',
      'head_desc': 'Pick up from farms direct'
    },
    {'name': 'Will', 'group': 'Maize', 'head_desc': 'Fruit mix fresh pack'},
    {'name': 'Danny', 'group': 'Wheat', 'head_desc': 'Fresh Wheat from farm'},
  ];

  @override
  Widget build(BuildContext context) {
    print('rebuilding');
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: Dimensions.width20),
        child: GroupedListView<dynamic, String>(
          physics: const BouncingScrollPhysics(),
          elements: elements,
          groupBy: (element) => element['group'],
          // useStickyGroupSeparators: true,
          groupHeaderBuilder: (value) => Container(
            margin: EdgeInsets.only(bottom: Dimensions.height15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      value['group'],
                      style: AppTypography.textSemiBold16
                          .copyWith(color: const Color(0xFF141313)),
                    ),
                    const SizedBox(width: 40),
                    Text(
                      '(20% Off)',
                      style: AppTypography.textSemiBold12
                          .copyWith(color: const Color(0xFF4CA300)),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
                Text(
                  value['head_desc'],
                  style: AppTypography.textRegular12
                      .copyWith(color: const Color(0xFF141313)),
                ),
              ],
            ),
          ),
          indexedItemBuilder: (context, element, index) {
            return SizedBox(
              height: 240,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) => const ProductTile(),
                separatorBuilder: (context, index) =>
                    SizedBox(width: Dimensions.width20),
              ),
            );
          },
        ),
      ),
    );
  }
}
