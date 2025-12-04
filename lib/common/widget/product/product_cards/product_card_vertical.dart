import 'package:ecom_ethio/common/stayle/shadows.dart';
import 'package:ecom_ethio/common/widget/custom_shapes/container/trounded_container.dart';
import 'package:ecom_ethio/common/widget/image/t_rounded_image.dart';
import 'package:ecom_ethio/common/widget/text/product_price_text.dart';
import 'package:ecom_ethio/common/widget/text/product_titleText.dart';
import 'package:ecom_ethio/features/shop/screens/product_details/product_detail.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/Colors.dart';
import '../../../../utils/constants/Size.dart';
import '../../icons/t_circularIcon.dart';
import '../../text/t_brand_title_text_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    /// container with side padding,color,edge,radius and shadow
    return GestureDetector(
      onTap: () =>Get.to(()=>const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// thumbnail , wish list , Button, discount tage
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSize.sm),
              backGroundColor: dark ? TColors.dark : TColors.white,
              child: Stack(
                children: [
                  /// thumbnail image
                  TRoundedImage(
                   // fit: BoxFit.cover,
                    imagUrl: 'assets/images/onbording/img_28.png',
                    applyImageRadius: true,
                  ),

                  /// sale tage
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSize.sm,
                      backGroundColor: TColors.secondary.withOpacity(0.8),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: TColors.black),
                      ),
                    ),
                  ),

                  /// favorite Icon color
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      size: 15,
                      color: Colors.red,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItems / 2),

            /// Details
            Padding(
              padding: EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitle(title: 'Green Nike Air Shoes', smallSize: true),
                  TBrandTitleWithVerifiedIcon(title: 'Nike',),
                  const SizedBox(height: TSize.sm),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// price
                Padding(
                  padding: const EdgeInsets.only(left: TSize.sm),
                  child: const TProductPriceText(price: '35.0'),
                ),

                /// add to cart button
                Container(
                  decoration: BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(TSize.cardRadiusMd),
                      bottomRight: Radius.circular(TSize.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: TSize.iconLg * 1.2,
                    height: TSize.iconLg * 1.2,
                    child: Icon(Iconsax.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


