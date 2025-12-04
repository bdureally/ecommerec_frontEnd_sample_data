
import 'package:ecom_ethio/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecom_ethio/utils/constants/Text_String.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/login_signup/form_divider.dart';
import '../../../../common/widget/login_signup/social_button.dart';
import '../../../../utils/constants/Size.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            ///title 
            Text('Let\'s create your account ' ,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSize.spaceBtwSections,),
            /// form
            TSignupForm(),
            const SizedBox(height: TSize.spaceBtwSections,),
            /// Divider
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
            const SizedBox(height: TSize.spaceBtwSections,),
            /// social buttons
            const TSocialButton(),
          ],
        ),
        ),
        ),
      
    );
  }
}

