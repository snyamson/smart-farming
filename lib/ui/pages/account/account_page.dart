import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/ui/shared/widgets/account_tile.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.maxFinite,
                height: Dimensions.accountPageHeaderHeight,
                color: AppColors.primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    CircleAvatar(radius: Dimensions.height52 - 2),
                    SizedBox(height: Dimensions.height10),
                    Text(
                      'Solomon Nyamson',
                      style: AppTypography.textBold16
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(height: Dimensions.height6),
                    Text(
                      'info.snyamson@gmail.com',
                      style: AppTypography.textRegular12
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(height: Dimensions.height15 * 2)
                  ],
                ),
              ),
              Positioned(
                  right: Dimensions.screenHeight / 27.281,
                  top: Dimensions.screenHeight / 12,
                  child: Icon(
                    FeatherIcons.edit,
                    size: Dimensions.iconSize24,
                    color: Colors.white,
                  ))
            ],
          ),
          Expanded(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              AccountTile(
                label: 'My Orders',
                icon: FeatherIcons.shoppingBag,
                onTap: () {},
              ),
              Divider(color: AppColors.dividerColor),
              AccountTile(
                label: 'Favorites',
                icon: FeatherIcons.heart,
                onTap: () {},
              ),
              Divider(color: AppColors.dividerColor),
              AccountTile(
                label: 'Settings',
                icon: FeatherIcons.settings,
                onTap: () {},
              ),
              Divider(color: AppColors.dividerColor),
              AccountTile(
                label: 'My Cart',
                icon: FeatherIcons.shoppingCart,
                onTap: () {},
              ),
              Divider(color: AppColors.dividerColor),
              AccountTile(
                label: 'Rate us',
                icon: FeatherIcons.star,
                onTap: () {},
              ),
              Divider(color: AppColors.dividerColor),
              AccountTile(
                label: 'Refer a friend',
                icon: FeatherIcons.share2,
                onTap: () {},
              ),
              Divider(color: AppColors.dividerColor),
              AccountTile(
                label: 'Help',
                icon: FeatherIcons.helpCircle,
                onTap: () {},
              ),
              Divider(color: AppColors.dividerColor),
              AccountTile(
                label: 'Log Out',
                icon: FeatherIcons.logOut,
                onTap: () {},
              ),
            ],
          ))
        ],
      ),
    );
  }
}
