import 'package:flutter/material.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Size.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/container/trounded_container.dart';
import 'TBrandCard.dart';
class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: EdgeInsets.all(TSize.sm),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backGroundColor: Colors.transparent,
      margin: const EdgeInsets.only(
        bottom: TSize.spaceBtwItems,
      ),
      child: Column(
        children: [
          /// brand with product count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSize.spaceBtwItems,),
          /// brand Tab 3 rounded images
          Row(
              children: images.map((image)=>brandTapProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }
}
Widget brandTapProductImageWidget(String image,context){
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(TSize.md),
      margin:const EdgeInsets.only(right: TSize.sm),
      backGroundColor: THelperFunction.isDarkMode(context)?TColors.darkGrey:TColors.light,
      child:  Image(fit:BoxFit.contain,image: AssetImage(image)),
    ),
  );
}