import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:smart_farming/core/controllers/home_controller.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/pages/farmLogistics/farm_logistics_page.dart';
import 'package:smart_farming/ui/pages/information/information_page.dart';
import 'package:smart_farming/ui/pages/market/market_page.dart';
import 'package:smart_farming/ui/shared/widgets/keep_alive_wrapper.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.height50 + Dimensions.height20,
            backgroundColor: AppColors.primaryColor,
            floating: true,
            pinned: true,
            snap: false,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimensions.width10),
                  child: Text(
                    'Smart Farming',
                    style:
                        AppTypography.textBold26.copyWith(color: Colors.white),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FeatherIcons.bell,
                    size: Dimensions.iconSize20,
                  ),
                )
              ],
            ),
            bottom: AppBar(
              backgroundColor: AppColors.primaryColor,
              elevation: 0,
              title: Container(
                width: double.maxFinite,
                height: Dimensions.height40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                ),
                child: Center(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: AppColors.primaryColor,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: AppTypography.textRegular14
                          .copyWith(color: const Color(0xFFC3C3C3)),
                      prefixIcon: Icon(
                        FeatherIcons.search,
                        color: const Color(0xFFC3C3C3),
                        size: Dimensions.iconSize16,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius10),
                      ),
                      isCollapsed: true,
                      isDense: true,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverAppBar(
              pinned: true,
              primary: false,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Container(
                height: Dimensions.height40 - Dimensions.height10,
                margin: EdgeInsets.only(top: Dimensions.height10),
                child: TabBar(
                    controller: controller.homeTapController,
                    indicator: BoxDecoration(
                      color: AppColors.orangeColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius5),
                    ),
                    labelStyle: AppTypography.textMedium14,
                    labelColor: Colors.white,
                    unselectedLabelColor: const Color(0xFF989898),
                    tabs: const [
                      Tab(text: 'Information'),
                      Tab(text: 'Market'),
                      Tab(text: 'Farm Logistics'),
                    ]),
              )),
          SliverFillRemaining(
            child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.homeTapController,
                children: [
                  const KeepAliveWrapper(child: InformationPage()),
                  KeepAliveWrapper(child: MarketPage()),
                  const KeepAliveWrapper(child: FarmLogisticsPage()),
                ]),
          )
        ],
      ),
    );
  }
}
