import 'package:flutter/material.dart';

import '../../../../utils/constants/Colors.dart';
import '../../../../utils/constants/Size.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../image/t_rounded_image.dart';
import '../../text/product_titleText.dart';
import '../../text/t_brand_title_text_with_verified_icon.dart';
class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Images
        TRoundedImage(
          imagUrl: 'assets/images/onbording/img_7.png',
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSize.sm),
          backgroundColor: THelperFunction.isDarkMode(context)
              ? TColors.darkGrey
              : TColors.light,
        ),
        const SizedBox(width: TSize.sm,),

        /// Title, Price, & Size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TBrandTitleWithVerifiedIcon(title: 'Nike'),
            Flexible(child: TProductTitle(title: 'Black Sport shoes',maxLine: 1,)),

            /// Attributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Color ',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Green ',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Size ',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'UK 08',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            )

          ],
        )
      ],
    );
  }
}