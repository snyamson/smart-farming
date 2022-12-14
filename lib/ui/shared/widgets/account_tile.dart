import 'package:flutter/material.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class AccountTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onTap;
  const AccountTile(
      {Key? key, required this.label, required this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: onTap,
      leading: Icon(
        icon,
        color: AppColors.primaryColor,
        size: Dimensions.iconSize20,
      ),
      title: Text(
        label,
        style:
            AppTypography.textMedium14.copyWith(color: const Color(0xFF393939)),
      ),
    );
  }
}
