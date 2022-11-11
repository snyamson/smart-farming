import 'package:flutter/material.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/shared/widgets/direct_farm_info_tile.dart';
import 'package:smart_farming/ui/shared/widgets/lesson_tile.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Market Price Information',
              style: AppTypography.textSemiBold20,
            ),
            SizedBox(height: Dimensions.height10),
            Table(
              border: TableBorder.all(color: const Color(0xFFCCCCCC)),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Text(
                        'Commodity Type',
                        style: AppTypography.textRegular15.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Price',
                        style: AppTypography.textRegular15.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Text(
                        'Commodity One',
                        style: AppTypography.textRegular15,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Price One',
                        style: AppTypography.textRegular15,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Text(
                        'Commodity One',
                        style: AppTypography.textRegular15,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Price One',
                        style: AppTypography.textRegular15,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: Dimensions.height20 + Dimensions.height10),
            Text(
              'Direct Farm Information',
              style: AppTypography.textSemiBold20,
            ),
            SizedBox(height: Dimensions.height10),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return const DirectFarmInfoTile();
                }),
            SizedBox(height: Dimensions.height20 + Dimensions.height10),
            Text(
              'Learn',
              style: AppTypography.textSemiBold20,
            ),
            SizedBox(height: Dimensions.height10),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return const LessonTile();
                }),
          ],
        ),
      ),
    );
  }
}
