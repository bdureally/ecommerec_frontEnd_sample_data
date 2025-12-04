import 'package:ecom_ethio/common/stayle/spacing_style.dart';
import 'package:ecom_ethio/features/authentication/screens/login/widget/Login_form.dart';
import 'package:ecom_ethio/features/authentication/screens/login/widget/Login_header.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:ecom_ethio/utils/constants/Text_String.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/login_signup/form_divider.dart';
import '../../../../common/widget/login_signup/social_button.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      // appBar: AppBar(title: Text('Hi'), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          // padding: EdgeInsets.only(
          //   top: TSize.appBarHeight,
          //   left: TSize.defaultSpace,
          //   bottom: TSize.defaultSpace,
          //   right: TSize.defaultSpace,
          // ),
          child: Column(
            children: [
              /// Logo Title and SubTitle
              TLoginHeader(),

              ///Form
              TLoginForm(),

              /// divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSize.spaceBtwSections),
              /// footer
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

