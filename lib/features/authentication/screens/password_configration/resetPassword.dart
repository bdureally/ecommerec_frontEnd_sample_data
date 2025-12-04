import 'package:ecom_ethio/utils/constants/Text_String.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/Size.dart';
import '../../../../utils/helpers/helper_function.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            /// image
            Image(image: AssetImage('assets/images/onbording/img_6.png'),width: THelperFunction.screenWidth()*0.6,),
            const SizedBox(height: TSize.spaceBtwSections,),
            /// Title and subTitle
            Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBtwItems,),
            Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBtwItems,),
            /// button
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text('Done')),),
            const SizedBox(height: TSize.spaceBtwItems,),
            SizedBox(width:double.infinity,child: TextButton(onPressed: (){}, child: const Text('Resend Email')),),
          ],
        ),),
      ),
    );
  }
}
