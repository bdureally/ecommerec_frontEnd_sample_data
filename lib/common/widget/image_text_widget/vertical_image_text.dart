import 'package:flutter/material.dart';

import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Size.dart';
import '../../../utils/helpers/helper_function.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSize.spaceBtwItems),
        child: Column(
          children: [
            /// circular icon
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(TSize.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? TColors.light : TColors.dark,
                ),
              ),
            ),

            /// text
            const SizedBox(height: TSize.spaceBtwItems / 2),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
