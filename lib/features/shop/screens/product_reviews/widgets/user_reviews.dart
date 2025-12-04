import 'package:ecom_ethio/common/widget/custom_shapes/container/trounded_container.dart';
import 'package:ecom_ethio/common/widget/product/rating/rating_indicator.dart';
import 'package:ecom_ethio/utils/constants/Colors.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/Size.dart';
class  UserReviewCard extends StatelessWidget {
  const  UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage('assets/images/onbording/your.jpg'),),
                const SizedBox(width: TSize.spaceBtwItems,),
                Text('Yordanos Yitbarek',style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert))
          ],
        ) ,
        const SizedBox(height: TSize.spaceBtwItems,),
        /// Reviews
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text('01 Nov,2023',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        ReadMoreText(
          'the user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
          trimLines: 2,
          trimMode:   TrimMode.Line,
          trimExpandedText: 'Show Less ',
          trimCollapsedText: 'Show More ',
          moreStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        /// Company Review
        TRoundedContainer(
          backGroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(padding: EdgeInsets.all(TSize.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Y'S Store",style: Theme.of(context).textTheme.titleMedium,),
                  Text('02 Nov, 2025',style: Theme.of(context).textTheme.titleMedium,)
                ],
              ),
              const SizedBox(height: TSize.spaceBtwItems,),
              ReadMoreText(
                'the user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great job! ',
                trimLines: 2,
                trimMode:   TrimMode.Line,
                trimExpandedText: 'Show Less',
                trimCollapsedText: 'Show More',
                moreStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
              ),
            ],
          ),
          ),
        ),
        const SizedBox(height: TSize.spaceBtwSections,)
      ],
    );
  }
}
