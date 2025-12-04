import 'package:ecom_ethio/common/widget/text/t_brand_title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Size.dart';
import '../../../utils/constants/enums.dart';
class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines=1,
    this.textColor,
    this.iconColor=TColors.primary,
    this.textAlign=TextAlign.center,
    this.brandTitleSize=TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTitleSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: TBrandTitleText(
          title:title,
          color:textColor,
          maxLines:maxLines,
          textAlign: textAlign,
          brandTextSizes:brandTitleSize,
        )),
        Icon(Iconsax.verify, color: TColors.primary, size: TSize.iconXs),
      ],
    );
  }
}