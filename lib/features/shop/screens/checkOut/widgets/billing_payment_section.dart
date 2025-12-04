import 'package:ecom_ethio/common/widget/custom_shapes/container/trounded_container.dart';
import 'package:ecom_ethio/common/widget/text/section_heading.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/Colors.dart';
import '../../../../../utils/constants/Size.dart';
class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method',buttonTitle: 'Change',showActionButton: true,onPressed: (){},),
        const SizedBox(height: TSize.spaceBtwItems/2,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backGroundColor: dark? TColors.light : TColors.white,
              padding: EdgeInsets.all(TSize.sm),
              child: const Image(image: AssetImage('assets/payment/img.png'),fit: BoxFit.contain,),
            ),
            const SizedBox(width: TSize.spaceBtwItems/2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
