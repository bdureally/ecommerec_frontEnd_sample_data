import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/common/widget/image/t_circular_image.dart';
import 'package:ecom_ethio/common/widget/text/section_heading.dart';
import 'package:ecom_ethio/features/personalization/screens/profile/widget/prifile_menu.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile',),
      ),
      /// body
      body: SingleChildScrollView(
child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
  child: Column(
    children: [
      /// profile picture
      SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(100), child: TCircularImage(image: 'assets/images/onbording/your.jpg',width: 80,height: 80,backGroundColor: dark? Colors.blueGrey:Colors.white,)),
            TextButton(onPressed: (){}, child: const Text('Change Profile Picture'),
            ),
          ],
        ),
      ),
      /// Details
      const SizedBox(height: TSize.spaceBtwItems,),
      const Divider(),
      const SizedBox(height: TSize.spaceBtwItems,),
      ///Heading profile info
      const TSectionHeading(title: 'Profile Information',showActionButton: false,),
      const SizedBox(height: TSize.spaceBtwItems,),

      ProfileMenu(onPressed: (){}, title: 'Name', value: 'Yordanos Yitbarek'),
      ProfileMenu(onPressed: (){}, title: 'User Name', value: 'enawugyit@gmail.com'),

      const SizedBox(height: TSize.spaceBtwItems,),
      const Divider(),
      const SizedBox(height: TSize.spaceBtwItems,),

      /// Heading personal info
      const TSectionHeading(title: 'Personal Information',showActionButton: false,),
      const SizedBox(height: TSize.spaceBtwItems,),

      ProfileMenu(onPressed: (){}, title: 'User ID', value: 'BDU1508409'),
      ProfileMenu(onPressed: (){}, title: 'E-mail', value: 'enawugyit@gmail.com'),
      ProfileMenu(onPressed: (){}, title: 'Phone Number', value: '+251 989182946'),
      ProfileMenu(onPressed: (){}, title: 'Gender', value: 'male'),
      ProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '16 august,2003'),
      const Divider(),
      const SizedBox(height: TSize.spaceBtwItems,),
      
      Center(
        child: TextButton(
            onPressed: (){}, 
            child: Text('Close Account',style: TextStyle(color: Colors.red),)),
      )


    ],
  ),

),

),
    );
  }
}
