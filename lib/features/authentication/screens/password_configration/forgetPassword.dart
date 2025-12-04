import 'package:ecom_ethio/features/authentication/screens/password_configration/resetPassword.dart';
import 'package:ecom_ethio/utils/constants/Text_String.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/Size.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// heading
            Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSize.spaceBtwItems,),
            Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSize.spaceBtwSections*2,),
            /// Text Filed
TextFormField(decoration: InputDecoration(labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct_right)),),
            const SizedBox(height: TSize.spaceBtwSections,),
            /// Submit screen
            SizedBox(width: double.infinity,
              child: ElevatedButton(
                onPressed:()=>Get.off(()=>const ResetPassword()),
                child: Text(TTexts.submit),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
