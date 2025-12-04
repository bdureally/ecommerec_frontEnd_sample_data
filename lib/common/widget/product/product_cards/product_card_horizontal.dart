import 'package:ecom_ethio/common/widget/custom_shapes/container/trounded_container.dart';
import 'package:ecom_ethio/common/widget/icons/t_circularIcon.dart';
import 'package:ecom_ethio/common/widget/image/t_rounded_image.dart';
import 'package:ecom_ethio/common/widget/text/product_price_text.dart';
import 'package:ecom_ethio/common/widget/text/product_titleText.dart';
import 'package:ecom_ethio/common/widget/text/t_brand_title_text_with_verified_icon.dart';
import 'package:ecom_ethio/utils/constants/Colors.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSize.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.grey,
      ),
      child: Row(
        children: [
          /// Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSize.sm),
            backGroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                    imagUrl: 'assets/images/onbording/img_26.png',fit: BoxFit.cover,
                  ),
                ),

                /// Sale Tage
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSize.sm,
                    backGroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSize.sm,vertical: TSize.xs),
                    child: Text('25%', style: Theme.of(context,).textTheme.labelMedium!.apply(color: TColors.black),),
                  ),
                ),
                /// Favorite Icon Button
                const Positioned(
                    top: 0,
                    right: 0,
                    child:TCircularIcon(size:26,icon: Iconsax.heart5,color: Colors.red,)
                )
              ],
            ),
          ),
          /// Details
          SizedBox(
            width: 120,
            child: Padding(
              padding: EdgeInsets.only(top: TSize.sm,left: TSize.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitle(title: 'Green Nike Half Sleaves Shirt ',smallSize: true,),
                      SizedBox(height:TSize.spaceBtwItems/2),
                      TBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      Flexible(child: const TProductPriceText(price: '256.0')),
                      /// Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(TSize.cardRadiusMd),
                            bottomRight: Radius.circular(TSize.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSize.iconLg * 1.2,
                          height: TSize.iconLg * 1.2,
                          child: Icon(Iconsax.add, color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
