import 'package:ecom_ethio/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/constants/Colors.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnboardingController.instance;
    final dark=THelperFunction.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      //left: TSize.defaultSpace,
      left: 0,
      right: 0,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: dark ?TColors.light:TColors.dark,
            dotHeight: 6,
          ),
        ),
      ),
    );
  }
}