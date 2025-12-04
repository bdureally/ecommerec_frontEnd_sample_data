import 'package:flutter/material.dart';

import '../../../../../common/widget/appBar/appBar.dart';
import '../../../../../common/widget/product/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/Colors.dart';
import '../../../../../utils/constants/Text_String.dart';


class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TTexts.homeApBarTitle,style: Theme.of(context).textTheme.labelMedium?.apply(color: TColors.grey),),
            Text(TTexts.homeAppBarSubTitle,style: Theme.of(context).textTheme.headlineSmall?.apply(color: TColors.white),),
          ],
        ),
      ),
      actions: [
        TCartCounterIcon(onPressed: () {}, iconColor: TColors.white,bagColor: Colors.white,circularIconColor: Colors.black,),
      ],
    );
  }
}
