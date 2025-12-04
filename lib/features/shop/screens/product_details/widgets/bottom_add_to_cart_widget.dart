import 'package:ecom_ethio/common/widget/icons/t_circularIcon.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/Colors.dart';
import '../../../../../utils/constants/Size.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: TSize.defaultSpace,
        vertical: TSize.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? TColors.darkGrey : TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSize.cardRadiusLg),
          topRight: Radius.circular(TSize.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.white,
                size: 20,
              ),
              const SizedBox(width: TSize.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: TSize.spaceBtwItems),
              TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColors.black,
                width: 40,
                height: 40,
                color: TColors.white,
                size: 20,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(TSize.md),
                backgroundColor: TColors.black,
                side: const BorderSide(color: TColors.black)
              ),
              child: Text('Add to Cart')),
        ],
      ),
    );
  }
}
