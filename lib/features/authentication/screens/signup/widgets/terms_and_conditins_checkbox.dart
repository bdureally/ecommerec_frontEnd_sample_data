import 'package:flutter/material.dart';

import '../../../../../utils/constants/Colors.dart';
import '../../../../../utils/constants/Size.dart';
import '../../../../../utils/constants/Text_String.dart';
import '../../../../../utils/helpers/helper_function.dart';
class TTermsAndConditionsCheckBox extends StatelessWidget {
  const TTermsAndConditionsCheckBox({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(height:24,width:24,child: Checkbox(value: true,checkColor: Colors.white , onChanged: (value){})),
        const SizedBox(width: TSize.spaceBtwItems,),
        Text.rich(TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.iAgreeTo} ',style:Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.privacyPolicy,style:Theme.of(context).textTheme.bodyMedium!.apply(
                color:dark?TColors.white:TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark?TColors.white:TColors.primary,

              ),
              ),
              TextSpan(
                text: TTexts.and,style:Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.termsOfUs,style:Theme.of(context).textTheme.bodyMedium?.apply(
                color: dark?TColors.white:TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark?TColors.white:TColors.primary,
              ),
              ),
            ]
        ))
      ],
    );
  }
}
