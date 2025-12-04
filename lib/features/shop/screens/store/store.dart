import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/common/widget/appBar/tabBar.dart';
import 'package:ecom_ethio/common/widget/custom_shapes/container/search_container.dart';
import 'package:ecom_ethio/common/widget/custom_shapes/container/trounded_container.dart';
import 'package:ecom_ethio/common/widget/layout/grid_layout.dart';
import 'package:ecom_ethio/common/widget/product/cart/cart_menu_icon.dart';
import 'package:ecom_ethio/common/widget/text/section_heading.dart';
import 'package:ecom_ethio/common/widget/text/t_brand_title_text_with_verified_icon.dart';
import 'package:ecom_ethio/features/shop/screens/store/widgets/catagory_tab.dart';
import 'package:ecom_ethio/utils/constants/Colors.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widget/image/t_circular_image.dart';
import '../../../../utils/constants/enums.dart';
import '../all_brand/all_brand.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: dark ? Colors.black : Colors.white,
              bagColor: dark ? Colors.white : Colors.black,
              circularIconColor: dark ? Colors.white : Colors.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrollable) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunction.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSize.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      /// search bar
                      SizedBox(height: TSize.spaceBtwItems),
                      TSearchContainer(
                        text: 'search in store ',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: TSize.spaceBtwSections),

                      /// Feature brands
                      TSectionHeading(
                        title: 'Feature Brands',
                        onPressed: ()  =>Get.to(()=>AllBrandScreen()),
                      ),
                      const SizedBox(height: TSize.spaceBtwItems / 1.5),

                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: TRoundedContainer(
                              showBorder: true,
                              padding: const EdgeInsets.all(TSize.sm),
                              backGroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  ///Icon
                                  Flexible(
                                    child: TCircularImage(
                                      isNetworkImage: false,
                                      backGroundColor: Colors.transparent,
                                      overLayColor:
                                          THelperFunction.isDarkMode(context)
                                          ? TColors.white
                                          : TColors.black,
                                      image:
                                          'assets/images/onbording/img_29.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: TSize.spaceBtwItems / 2,
                                  ),

                                  /// Text
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TBrandTitleWithVerifiedIcon(
                                          title: 'Nike',
                                          brandTitleSize: TextSizes.large,
                                        ),
                                        Text(
                                          '256 products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                bottom: TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

