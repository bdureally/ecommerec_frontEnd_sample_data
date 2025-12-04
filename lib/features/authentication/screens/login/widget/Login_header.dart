import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/Size.dart';
import '../../../../../utils/constants/image_String.dart';
class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 200,
          width: 200,
          image: AssetImage(
            dark ? TImages.lightAppLogo : TImages.darkApLogo,
          ),
        ),
        Text(
          'Welcome back',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: TSize.sm),
        Text(
          'Discover Limitless choices and unmatched convenience',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
