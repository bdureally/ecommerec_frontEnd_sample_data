import 'package:flutter/material.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Size.dart';
import '../../../utils/helpers/helper_function.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit=BoxFit.cover,
    required this.image,
    this.isNetworkImage=false,
    this.overLayColor,
    this.backGroundColor,
    this.width=56,
    this.height=56,
    this.padding=TSize.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overLayColor;
  final Color? backGroundColor;
  final double width, height, padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: THelperFunction.isDarkMode(context)
            ? TColors.black
            : TColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image:isNetworkImage ? NetworkImage(image):AssetImage(image),
        color: overLayColor,
      ),
    );
  }
}
