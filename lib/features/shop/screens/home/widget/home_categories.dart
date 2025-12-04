import 'package:ecom_ethio/features/shop/screens/sub_category/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widget/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_String.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 12,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.onBoardingImage3,
            title: 'Shoes',
            onTap: ()=>Get.to(()=>const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
