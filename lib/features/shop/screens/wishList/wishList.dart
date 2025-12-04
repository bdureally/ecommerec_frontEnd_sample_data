import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/common/widget/icons/t_circularIcon.dart';
import 'package:ecom_ethio/common/widget/layout/grid_layout.dart';
import 'package:ecom_ethio/common/widget/product/product_cards/product_card_vertical.dart';
import 'package:ecom_ethio/features/shop/screens/home/home.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            size: 30,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 6,
                itemBuilder: (context, index) => TProductCardVertical(),
              ),
              const SizedBox(height: TSize.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
