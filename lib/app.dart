import 'package:ecom_ethio/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:ecom_ethio/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
/// use this class to setup themes initial bindings any animations and with are used in any material widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
