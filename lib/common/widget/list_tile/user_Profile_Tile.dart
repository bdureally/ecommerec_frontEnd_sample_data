import 'package:ecom_ethio/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/Colors.dart';
import '../image/t_circular_image.dart';


class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: TCircularImage(
          width: 50,
          height: 50,
          image: 'assets/images/onbording/your.jpg',
          padding: 0,
        ),
      ),
      title: Text('Yordanos Yitbarek',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white,),),
      subtitle: Text('enawugyit@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: ()=>Get.to(()=>ProfileScreen()), icon: Icon(Iconsax.edit,color: TColors.white,)),
    );
  }
}