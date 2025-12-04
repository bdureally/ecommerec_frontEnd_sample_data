import 'package:ecom_ethio/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/Size.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.showBackArrow=true,
    this.leadingIcon,
    this.leadingOnPressed,
    this.actions,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSize.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        // backward arrow in appBar is not visible if we write like this embliyliding =false
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left),
              )
            :leadingIcon!=null ? IconButton(
                onPressed: () => leadingOnPressed,
                icon: Icon(leadingIcon),
              ):null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
