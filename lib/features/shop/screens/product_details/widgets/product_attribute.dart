import 'package:ecom_ethio/common/widget/custom_shapes/container/trounded_container.dart';
import 'package:ecom_ethio/common/widget/text/product_price_text.dart';
import 'package:ecom_ethio/common/widget/text/product_titleText.dart';
import 'package:ecom_ethio/common/widget/text/section_heading.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/chips/choice_chip.dart';
import '../../../../../utils/constants/Colors.dart';
import '../../../../../utils/constants/Size.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: EdgeInsets.all(TSize.md),
          backGroundColor: darkMode ? TColors.darkGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title ,Price and Stack Statues
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSize.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitle(title: 'Price:', smallSize: true),
                          const SizedBox(width: TSize.spaceBtwItems),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSize.spaceBtwItems),

                          /// Sale Price
                          TProductPriceText(price: '20'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitle(title: 'Stock', smallSize: true),
                          Text(
                            'In Stack:',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation and Description
              const TProductTitle(
                title:
                    'Theis is the description of the product and it can go up to max 4 lines',
                smallSize: true,
                maxLine: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSize.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors',showActionButton: false,),
            SizedBox(height: TSize.spaceBtwItems / 2),
           Wrap(
             spacing: 8,
             children: [
               TChoiceChip(text: 'Green', selected: true,onSelected: (value){},),
               TChoiceChip(text: 'Blue', selected: false,onSelected: (value){}),
               TChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),

             ],
           )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size',showActionButton: false,),
            SizedBox(height: TSize.spaceBtwItems / 2),
           Wrap(
             spacing: 8,
             children: [
               TChoiceChip(text: 'EU 34', selected: true,onSelected: (value){}),
               TChoiceChip(text: 'EU 36', selected: false,onSelected: (value){}),
               TChoiceChip(text: 'EU 38', selected: false,onSelected: (value){}),
             ],
           )
          ],
        ),
      ],
    );
  }
}

