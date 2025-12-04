
import 'package:ecom_ethio/common/widget/text/section_heading.dart';
import 'package:ecom_ethio/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecom_ethio/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:ecom_ethio/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecom_ethio/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecom_ethio/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecom_ethio/features/shop/screens/product_reviews/widgets/product_review.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 1 product image slider
            TProductImageSlider(),

            /// 2 product detail
            Padding(padding: EdgeInsets.only(right: TSize.defaultSpace,left: TSize.defaultSpace,bottom: TSize.defaultSpace),
              child: Column(
                children: [
                  /// Rating & share
                  TRatingAndShare(),
                  /// Price ,Title,Stack,, and Brand
                  TProductMetaData(),
                  /// Attributes
                  TProductAttributes(),
                  const SizedBox(height: TSize.spaceBtwSections,),
                  /// CheckOut Button
                  SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: Text('CheckOut'),)),
                  const SizedBox(height: TSize.spaceBtwSections,),
                  /// Description
                  const TSectionHeading(title: 'Description',showActionButton: false,),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  ReadMoreText(
                    'this is product description of blue Nike sleave less vest . there are more things that can be add but i am just practicing and nothing else. ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'show more',
                    trimExpandedText: 'show less',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),
                  /// Review
                  const Divider(),
                  const SizedBox(height: TSize.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews (199)',showActionButton: false,),
                      IconButton(onPressed: ()=>Get.to(()=>ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3,size: 18,))
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwSections,),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}



