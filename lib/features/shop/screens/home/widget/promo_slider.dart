import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_ethio/features/shop/controllers/home_controller.dart';
import 'package:ecom_ethio/utils/constants/Colors.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/custom_shapes/container/circular_container.dart';
import '../../../../../common/widget/image/t_rounded_image.dart';
import '../../../../../utils/constants/Size.dart';
import 'package:get/get.dart';
class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,required this.banners
  });
final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(viewportFraction: 1,onPageChanged: (index,_)=>controller.updatePageIndicator(index)),
          items: banners.map((uri)=>TRoundedImage(imagUrl: uri)).toList(),
          
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        Center(
          child: Obx(
              ()=> Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i=0;i<banners.length;i++)// three times display the UI of TCircularContainer
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carsouralCurrentIndex.value==i ?TColors.primary : TColors.grey,
                  ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}