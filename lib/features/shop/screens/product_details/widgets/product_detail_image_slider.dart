import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/appBar/appBar.dart';
import '../../../../../common/widget/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widget/icons/t_circularIcon.dart';
import '../../../../../common/widget/image/t_rounded_image.dart';
import '../../../../../utils/constants/Colors.dart';
import '../../../../../utils/constants/Size.dart';
import '../../../../../utils/helpers/helper_function.dart';
class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
    });


  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunction.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: isDark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [

            /// Main large image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(TSize.productImageRadius),
                child: Center(
                  child: Image(
                    image: AssetImage(
                      'assets/images/onbording/img_28.png',
                    ),
                  ),
                ),
              ),
            ),

            /// Image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  separatorBuilder: (_, _) =>
                  const SizedBox(width: TSize.spaceBtwItems,),
                  itemBuilder: (context, index) => TRoundedImage(
                    backgroundColor: isDark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: EdgeInsets.all(TSize.sm),
                    width: 80,
                    imagUrl: 'assets/images/onbording/img_10.png',
                  ),
                ),
              ),
            ),
            /// AppBar Icon
            TAppBar(
              showBackArrow: true,
              actions:[TCircularIcon(icon: Iconsax.heart5,color: Colors.red,size: 25,)],
            )
          ],
        ),
      ),
    );
  }
}