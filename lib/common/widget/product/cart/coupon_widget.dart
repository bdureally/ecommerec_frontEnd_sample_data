import 'package:flutter/material.dart';

import '../../../../utils/constants/Colors.dart';
import '../../../../utils/constants/Size.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../custom_shapes/container/trounded_container.dart';
class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backGroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(
        top: TSize.sm,
        bottom: TSize.sm,
        right: TSize.sm,
        left: TSize.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Have a promo code? Enter here',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark
                      ? TColors.white.withOpacity(0.5)
                      : TColors.dark.withOpacity(0.5),
                  backgroundColor: TColors.grey.withOpacity(0.2),
                  side: BorderSide(color: Colors.grey.withOpacity(0.1))
              ),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}