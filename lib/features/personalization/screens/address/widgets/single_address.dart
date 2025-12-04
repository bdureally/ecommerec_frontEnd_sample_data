import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/custom_shapes/container/trounded_container.dart';
import '../../../../../utils/constants/Colors.dart';
import '../../../../../utils/constants/Size.dart';
class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});
final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark= THelperFunction.isDarkMode(context);
    return TRoundedContainer(
        width: double.infinity,
        showBorder: true,
        backGroundColor:selectedAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent ,
        borderColor: selectedAddress ? Colors.transparent : dark ? TColors.darkGrey : TColors.grey,
        margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 8,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle : null,
              color: selectedAddress ? dark ? TColors.light : TColors.dark : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Yordanos Yitbarek',
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                     style:Theme.of(context).textTheme.titleLarge),
                const SizedBox(height:TSize.sm/2),
                const Text('(+125) 416 7090',maxLines: 2,overflow: TextOverflow.ellipsis,),
                const SizedBox(height:TSize.sm/2),
                const Text('82356 Yordanos Yitbarek, maine &7665, Addis Ababa',softWrap: true,)
              ],
            ),
          )
        ],
      ),
      );
  }
}
