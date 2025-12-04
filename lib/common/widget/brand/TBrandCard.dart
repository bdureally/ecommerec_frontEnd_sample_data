import 'package:ecom_ethio/common/widget/custom_shapes/container/trounded_container.dart';
import 'package:ecom_ethio/common/widget/image/t_circular_image.dart';
import 'package:ecom_ethio/common/widget/text/t_brand_title_text_with_verified_icon.dart';
import 'package:ecom_ethio/utils/constants/Colors.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:ecom_ethio/utils/constants/enums.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({super.key, this.onTap, required this.showBorder});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,

      /// container design
      child: TRoundedContainer(
        showBorder: showBorder,
        backGroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSize.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: 'assets/images/onbording/img_29.png',
                backGroundColor: Colors.transparent,
                overLayColor: dark ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(width: TSize.spaceBtwItems / 2),

            /// Texts
            // [Expands]  and Columns[MainAxisSize.min] are important to keep the element in the vertical center and also
            // to keep text inside the boundary
            Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TBrandTitleWithVerifiedIcon(title: 'Nike',brandTitleSize: TextSizes.large,),
                      Text(
                        '25 products',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ]
                )
            ),
          ],
        ),
      ),
    );
  }
}
