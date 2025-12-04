
import 'package:ecom_ethio/utils/constants/Text_String.dart';
import 'package:ecom_ethio/utils/constants/image_String.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers.onboarding/onboarding_controller.dart';
import '../widgets/onBoardingDotNavigation.dart';
import '../widgets/onBoarding_NextButton.dart';
import '../widgets/onBoarding_page.dart';
import '../widgets/onBoarding_skp.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// it is horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// skip button
          OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          ///  circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}

