import 'package:flutter/material.dart';
import '../../../../utils/constants/Size.dart';
import '../../../../utils/helpers/helper_function.dart';
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: [
            Padding(
              padding: EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  Image(
                    height: THelperFunction.screenHeight() * 0.6,
                    // use 60% screen width to this app
                    width: THelperFunction.screenWidth() * 0.8,
                    // it means use 80% of the screen width
                    image: AssetImage(image),
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: TSize.spaceBtwItems),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
