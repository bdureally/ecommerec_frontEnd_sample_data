import 'package:ecom_ethio/common/widget/layout/grid_layout.dart';
import 'package:ecom_ethio/features/shop/screens/all_product/all_product.dart';
import 'package:ecom_ethio/features/shop/screens/home/widget/home_appBar.dart';
import 'package:ecom_ethio/features/shop/screens/home/widget/home_categories.dart';
import 'package:ecom_ethio/features/shop/screens/home/widget/promo_slider.dart';
import 'package:ecom_ethio/utils/constants/image_String.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widget/custom_shapes/container/search_container.dart';
import '../../../../common/widget/product/product_cards/product_card_vertical.dart';
import '../../../../common/widget/text/section_heading.dart';
import '../../../../utils/constants/Size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// header
            TPrimaryHeaderContainer(
              child: Column(
                children: [

                  /// appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSize.spaceBtwSections),

                  /// search bar section
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSize.spaceBtwSections),

                  /// categories section
                  Padding(
                    padding: EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSize.spaceBtwItems),

                        /// categories
                        THomeCategories(),
                        const SizedBox(height: TSize.spaceBtwItems,)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// body
            Padding(
              padding: EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [

                  /// promo slider
                  TPromoSlider(
                    banners: [TImages.shoes1, TImages.cloth2, TImages.shoes2],),
                   SizedBox(height: 30,),
                    /// heading
                  TSectionHeading(title:'Popular products',onPressed: ()=>Get.to(()=>const AllProductScreen()),),
                    /// popular products
                  TGridLayout(itemCount: 2, itemBuilder: (context,index)=>TProductCardVertical()),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


