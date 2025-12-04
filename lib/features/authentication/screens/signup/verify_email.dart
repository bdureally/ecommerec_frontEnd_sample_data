import 'package:ecom_ethio/common/widget/success_screen/success_screen.dart';
import 'package:ecom_ethio/features/authentication/screens/login/login.dart';
import 'package:ecom_ethio/utils/constants/Text_String.dart';
import 'package:ecom_ethio/utils/constants/image_String.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/Size.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // to remove the back arrow which is used to navigate to the previous screen
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// image
              Image(
                image: AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSize.spaceBtwSections),

              /// Title and subTitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                'enawugyit@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: TImages.deliveredEmailIllustration,
                      title: TTexts.yourAccountCreatedTitle,
                      subTitle: TTexts.yourAccountCreatedSubTitle,
                      onPressed: () =>Get.to(()=>const LoginScreen()),
                    ),
                  ),
                  child: const Text('Continue'),
                ),
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Resand Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
