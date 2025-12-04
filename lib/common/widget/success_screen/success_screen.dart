import 'package:ecom_ethio/common/stayle/spacing_style.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/Size.dart';
import '../../../utils/helpers/helper_function.dart';
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});
final String image,title,subTitle;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight*2,
        child: Column(
          children: [
            /// image
            Image(image: AssetImage(image),width: THelperFunction.screenWidth()*0.6,),
            const SizedBox(height: TSize.spaceBtwSections,),
            /// Title and subTitle
            Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBtwItems,),
            Text(subTitle,style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBtwItems,),
           /// button
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: onPressed, child: const Text('Continue')),),
          ],
        ),
        ),
      ),
    );
  }
}
