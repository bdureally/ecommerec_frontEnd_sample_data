import 'package:ecom_ethio/common/widget/brand/TBrandCard.dart';
import 'package:ecom_ethio/common/widget/layout/grid_layout.dart';
import 'package:ecom_ethio/common/widget/product/sortable/sortable_products.dart';
import 'package:ecom_ethio/common/widget/text/section_heading.dart';
import 'package:ecom_ethio/features/shop/screens/all_brand/brand_product.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widget/appBar/appBar.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// Heading
              TSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: TSize.spaceBtwItems),
        
              /// Brands
              TGridLayout(
                mainAxisExtent: 80,
                itemCount: 10,
                itemBuilder: (context, index) => TBrandCard(showBorder: true,
                  onTap: () => Get.to(()=>BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
