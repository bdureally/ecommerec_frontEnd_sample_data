import 'package:ecom_ethio/Navigation_menu.dart';
import 'package:ecom_ethio/features/authentication/screens/password_configration/forgetPassword.dart';
import 'package:ecom_ethio/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/Size.dart';
import '../../../../../utils/constants/Text_String.dart';
class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSize.spaceBtwSections,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSize.sm),

            /// password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSize.sm),

            /// remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///remember me
                Row(
                  children: [
                    Checkbox(value: true, checkColor:Colors.white,onChanged: (value) {}),
                     //Text(TTexts.reme),
                    Text('remember me '),
                  ],
                ),

                ///forget password
                TextButton(
                  onPressed: () =>Get.to(()=>ForgetPassword()),
                  child: Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSize.spaceBtwSections),

            /// sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>Get.to(()=>NavigationMenu()),
                child: Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSize.spaceBtwItems),

            /// create account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () =>Get.to(()=>const SignupScreen()),
                child: Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

