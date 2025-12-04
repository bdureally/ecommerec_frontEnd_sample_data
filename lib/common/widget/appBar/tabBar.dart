import 'package:ecom_ethio/utils/constants/Colors.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/device/device_utility.dart';
class TTabBar extends StatelessWidget implements PreferredSizeWidget  {
  /// if you want to add the backgroundColor the Tab you have to rap them in Material widget
  /// todo that we need (preferredSized) widget and that is any created custom class (preferred sized widget)
  const TTabBar({super.key, required this.tabs});
final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Material(
      color: dark ? TColors.dark : TColors.primary,
      child: TabBar(
          tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white:TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }
  @override
  Size get preferredSize=>Size.fromHeight(TDeviceUtils.getAppBarHeight());

}
