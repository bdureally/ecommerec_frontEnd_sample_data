import 'package:ecom_ethio/common/widget/layout/grid_layout.dart';
import 'package:ecom_ethio/common/widget/product/product_cards/product_card_vertical.dart';
import 'package:ecom_ethio/common/widget/text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/brand/t_brand_show_case.dart';
import '../../../../../utils/constants/Size.dart';
class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      //physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// Brands
              TBrandShowCase(images: ['assets/images/onbording/img_26.png','assets/images/onbording/img_20.png','assets/images/onbording/img_22.png',],),
              TBrandShowCase(images: ['assets/images/onbording/img_26.png','assets/images/onbording/img_20.png','assets/images/onbording/img_22.png',],),
              /// products
              TSectionHeading(title: 'you might like',onPressed: (){},),
              const SizedBox(height: TSize.spaceBtwItems,),
              TGridLayout(itemCount: 4, itemBuilder:(context,index)=>TProductCardVertical()),
            ],
          ),
        ),
      ],
    );
  }
}
