import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecom_ethio/features/shop/screens/product_reviews/widgets/user_reviews.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/product/rating/rating_indicator.dart';
class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar
      appBar: TAppBar(title: Text('Reviews & Ratings'),showBackArrow: true,),
      /// Body
      body:SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rating and Reviews verified and are from people who use the type of advice that you use'),
              SizedBox(height: TSize.spaceBtwItems,),
              /// Overall product Rating
              TOverallProductRating(),
              /// by default it gives five stars if we don't specify the itemBuilder properties
              TRatingBarIndicator(rating: 3.5,),
              Text('12,611',style:Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSize.spaceBtwSections,),

              /// User Review List
              const UserReviewCard(),
              const  UserReviewCard(),
              const UserReviewCard(),
              const  UserReviewCard(),
            ],
        ),
        ),
      ) ,
    );
  }
}




