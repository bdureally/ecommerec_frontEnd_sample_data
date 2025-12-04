import 'package:flutter/material.dart';

import '../../../../utils/constants/Size.dart';
import '../../../../utils/device/device_utility.dart';
import '../../controllers.onboarding/onboarding_controller.dart';
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSize.defaultSpace,
      top: TDeviceUtils.getAppBarHeight(),
      child: TextButton(onPressed:()=>OnboardingController.instance.skipPage(), child: Text('Skip')),
    );
  }
}