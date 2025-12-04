import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/product/cart/add_remove_button.dart';
import '../../../../../common/widget/product/cart/cart_item.dart';
import '../../../../../common/widget/text/product_price_text.dart';
import '../../../../../utils/constants/Size.dart';
class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButton=true});
final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (_, _) =>
      const SizedBox(height: TSize.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Items
          TCartItem(),
          if(showAddRemoveButton) const SizedBox(height: TSize.spaceBtwItems,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// extra  space
              const SizedBox(width: 70,),
              /// Add Remove Button
              if(showAddRemoveButton) const Row(
                children: [
                  /// add remove button
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              TProductPriceText(price: '256'),

            //   /// coupon TextField
            //   TRoundedContainer(
            //     showBorder: true,
            //     borderColor: dark ? TColors.dark : TColors.white,
            //     padding: EdgeInsets.only(top: TSize.sm,bottom: TSize.sm,right: TSize.sm,left: TSize.md),
            //     child: SizedBox(
            //       width: 300,
            //       height: 300,
            //       child: Row(
            //         children: [
            //           Flexible(
            //             child: TextFormField(
            //               decoration: InputDecoration(hintText: 'have a promo code? inter here'),
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //   )
             ],
          )
        ],
      ),
    );
  }
}
