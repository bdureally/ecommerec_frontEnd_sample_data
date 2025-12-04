import 'package:flutter/material.dart';

import '../../../../utils/constants/Colors.dart';
import '../../../../utils/constants/Size.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunction.isDarkMode(context);
    return Positioned(
      right: TSize.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () =>OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor:dark?TColors.primary: Colors.black),
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}