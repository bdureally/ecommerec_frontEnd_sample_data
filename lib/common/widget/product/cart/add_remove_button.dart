import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/Colors.dart';
import '../../../../utils/constants/Size.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../icons/t_circularIcon.dart';
class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon:Iconsax.minus,
          width: 32,
          height: 32,
          size: TSize.md,
          color: THelperFunction.isDarkMode(context) ? TColors.white : TColors.black,
          backgroundColor: THelperFunction.isDarkMode(context) ? TColors.darkGrey : TColors.light,
        ),
        const SizedBox(width: TSize.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSize.spaceBtwItems,),

        TCircularIcon(
          icon:Iconsax.add,
          width: 32,
          height: 32,
          size: TSize.md,
          color:  TColors.white ,
          backgroundColor:TColors.primary,
        )
      ],
    );
  }
}