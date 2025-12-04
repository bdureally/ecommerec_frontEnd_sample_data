import 'package:ecom_ethio/common/widget/image/t_circular_image.dart';
import 'package:ecom_ethio/common/widget/text/product_price_text.dart';
import 'package:ecom_ethio/common/widget/text/product_titleText.dart';
import 'package:ecom_ethio/common/widget/text/t_brand_title_text_with_verified_icon.dart';
import 'package:ecom_ethio/utils/constants/enums.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/custom_shapes/container/trounded_container.dart';
import '../../../../../utils/constants/Colors.dart';
import '../../../../../utils/constants/Size.dart';
class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode=THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// price & Store price
      Row(
        children: [
        /// Sale Tage
          TRoundedContainer(
            radius: TSize.sm,
            backGroundColor: TColors.secondary.withOpacity(0.8),
            padding: EdgeInsets.symmetric(horizontal: TSize.sm,vertical:TSize.xs),
            child: Text('25%', style: Theme.of(context,).textTheme.labelLarge!.apply(color: TColors.black),),
          ),
          const SizedBox(width: TSize.spaceBtwItems,),
          
          /// Price
          Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
          const SizedBox(width: TSize.spaceBtwItems,),
          const TProductPriceText(price: '175',isLarge: true,),
          const SizedBox(width: TSize.spaceBtwItems/2,),
      ],
      ),
        const SizedBox(width: TSize.spaceBtwItems/1.5,),
        ///  Title
        const TProductTitle(title: 'Green Nike Sport Shirt'),
        const SizedBox(width: TSize.spaceBtwItems/1.5,),
        /// Stack Status
        Row(
          children: [
            const TProductTitle(title: 'Status'),
            Text('In Stoke',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(width: TSize.spaceBtwItems/1.5,),
        /// Brand
        Row(
          children: [
             TCircularImage(
                height:32,
                width:32,
                image: 'assets/images/onbording/img_30.png',
               overLayColor: darkMode ?TColors.white : TColors.black ,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTitleSize: TextSizes.small,),
          ],
        )
      ],
    );
  }
}
