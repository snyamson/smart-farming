import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
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
                height: 250,
                color: AppColors.primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const CircleAvatar(radius: 50),
                    const SizedBox(height: 11),
                    Text(
                      'Solomon Nyamson',
                      style: AppTypography.textBold16
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'info.snyamson@gmail.com',
                      style: AppTypography.textRegular12
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 25)
                  ],
                ),
              ),
              Positioned(
                  right: Dimensions.screenHeight / 27.281,
                  top: Dimensions.screenHeight / 12,
                  child: const Icon(
                    FeatherIcons.edit,
                    size: 24,
                    color: Colors.white,
                  ))
            ],
          ),
          Expanded(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              ListTile(
                leading: Icon(FeatherIcons.alignJustify),
                title: Text('My Orders'),
              ),
              ListTile(
                leading: Icon(FeatherIcons.alignJustify),
                title: Text('Favorites'),
              ),
              ListTile(
                leading: Icon(FeatherIcons.alignJustify),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(FeatherIcons.alignJustify),
                title: Text('My Cart'),
              ),
              ListTile(
                leading: Icon(FeatherIcons.alignJustify),
                title: Text('Rate us'),
              ),
              ListTile(
                leading: Icon(FeatherIcons.alignJustify),
                title: Text('Refer a friend'),
              ),
              ListTile(
                leading: Icon(FeatherIcons.alignJustify),
                title: Text('Help'),
              ),
              ListTile(
                leading: Icon(FeatherIcons.alignJustify),
                title: Text('Log Out'),
              )
            ],
          ))
        ],
      ),
    );
  }
}
