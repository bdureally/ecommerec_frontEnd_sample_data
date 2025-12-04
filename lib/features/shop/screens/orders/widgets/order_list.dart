import 'package:ecom_ethio/common/widget/custom_shapes/container/trounded_container.dart';
import 'package:ecom_ethio/utils/constants/Colors.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/Size.dart';
class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,// means take minimum space
      itemCount: 10,
      separatorBuilder: (_,_)=>const SizedBox(height: TSize.spaceBtwItems,),
      itemBuilder: (_,index)=>TRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(TSize.md),
        backGroundColor:dark ? TColors.dark : TColors.light ,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Row 1
            Row(
              children: [
                /// Icons
                Icon(Iconsax.ship),
                const SizedBox(width: TSize.spaceBtwItems/2,),

                /// Statues and Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1),
                      ),
                      Text('20 Nov, 2017',style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                /// Icon
                IconButton(onPressed: (){}, icon:const Icon(Iconsax.arrow_right_34,size: TSize.iconSm,))
              ],
            ),
            const SizedBox(height: TSize.spaceBtwItems,),
            /// Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// Icons
                      Icon(Iconsax.ship),
                      const SizedBox(width: TSize.spaceBtwItems/2,),

                      /// Statues and Date
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Order',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text('#256f2',style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),

                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      /// Icons
                      Icon(Iconsax.calendar),
                      const SizedBox(width: TSize.spaceBtwItems/2,),

                      /// Statues and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium
                            ),
                            Text('03 nov,2017',style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ) ;
  }
}
