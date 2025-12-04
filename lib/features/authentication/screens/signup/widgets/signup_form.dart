import 'package:ecom_ethio/features/authentication/screens/signup/verify_email.dart';
import 'package:ecom_ethio/features/authentication/screens/signup/widgets/terms_and_conditins_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/Size.dart';
import '../../../../../utils/constants/Text_String.dart';
import '../../../../../utils/helpers/helper_function.dart';
class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Form(
      child: Column(
        children: [

          Row(
            children: [
              /// firest and last name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSize.spaceBetweenInputField,),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSize.spaceBetweenInputField,),

          /// user name
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSize.spaceBetweenInputField,),
          /// email
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSize.spaceBetweenInputField,),
          /// phone number
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: TSize.spaceBetweenInputField,),
          /// password

          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)
            ),
          ),
          const SizedBox(height: TSize.spaceBetweenInputField,),
          /// terms and conditions checkbox
          TTermsAndConditionsCheckBox(),
          const SizedBox(height: TSize.spaceBtwSections,),
          /// signup button
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>VerifyEmailScreen()), child: Text(TTexts.createAccount)),)
        ],
      ),
    );
  }
}

