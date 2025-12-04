import 'package:ecom_ethio/utils/constants/Colors.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/Size.dart';
class TCircularIcon extends StatelessWidget {
  const TCircularIcon({super.key, this.width, this.height, this.size=TSize.sm, required this.icon, this.backgroundColor, this.onPressed, this.color});
final double? width,height,size;
final IconData icon;
final Color? color;
final Color? backgroundColor;
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null?backgroundColor!:THelperFunction.isDarkMode(context)?TColors.black.withOpacity(0.9)
        :TColors.white.withOpacity(0.9),
      borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color,size: size,)),
    );
  }
}
