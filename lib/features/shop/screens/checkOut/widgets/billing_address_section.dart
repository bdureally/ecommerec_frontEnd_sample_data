import 'package:ecom_ethio/common/widget/text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/Size.dart';
class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){},),
        Text('Yordanos Yitbarek',style: Theme.of(context).textTheme.bodyLarge,),

        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text('+152 989182946',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Expanded(child: Text('BahirDar Ethiopia',style: Theme.of(context).textTheme.titleMedium,)),
          ],
        ),
      ],
    );
  }
}
