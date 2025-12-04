import "package:ecom_ethio/common/widget/appBar/appBar.dart";
import "package:ecom_ethio/common/widget/custom_shapes/container/primary_header_container.dart";
import "package:ecom_ethio/common/widget/list_tile/setings_menu_tile.dart";
import "package:ecom_ethio/common/widget/text/section_heading.dart";
import "package:ecom_ethio/features/personalization/screens/address/address.dart";
import "package:ecom_ethio/features/shop/screens/orders/orders.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

import "../../../../common/widget/list_tile/user_Profile_Tile.dart";
import "../../../../utils/constants/Colors.dart";
import "../../../../utils/constants/Size.dart";
class SettingScreen extends StatelessWidget{
  const SettingScreen({super.key});
  @override
    Widget build(BuildContext context){
  return Scaffold(
    body:SingleChildScrollView(
      child: Column(
        children: [
          ///header
          TPrimaryHeaderContainer(child:Column(
            children: [
              /// AppBar
              TAppBar(title: Text('Accounts',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),
              /// userProfile card
              TUserProfileTile(),
              const SizedBox(height: TSize.spaceBtwSections,),
            ],
          )
          ),
          ///Body
          Padding(padding: const EdgeInsets.all(TSize.spaceBtwSections),
          child: Column(
            children: [
              /// account setting
              TSectionHeading(title: 'Account Settings',showActionButton: false,),
              const SizedBox(height: TSize.spaceBtwItems,),
              TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Address', subTitle: 'set shopping delivery address', onTap: ()=>Get.to(()=>UserAddressScreen()),),
              TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add,remove products and move to checkout', onTap: (){},),
              TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Order', subTitle: 'In_progress and completed orders', onTap: ()=>Get.to(()=>const OrderScreen()),),
              TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'withdraw balance to register bank account', onTap: (){},),
              TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all discounted coupons', onTap: (){},),
              TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification messages', onTap: (){},),
              TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account privacy', subTitle: 'Manage data usage and connected accounts', onTap: (){},),
      
              /// app settings
              const SizedBox(height: TSize.spaceBtwSections,),
              TSectionHeading(title: 'App Settings',showActionButton: false,),
              SizedBox(height: TSize.spaceBtwItems,),
              TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload data to your cloud fireBase '),
              TSettingsMenuTile(
                icon: Iconsax.location,
                title: 'Geolocation',
                subTitle: 'set recommendation based on location',
                trailing: Switch(value: true, onChanged: (value){})),
              TSettingsMenuTile(
                icon: Iconsax.security_user,
                title: 'safe mode',
                subTitle: 'Search result is saf for all ages',
                trailing: Switch(value: false, onChanged: (value){}),),
              TSettingsMenuTile(
                icon: Iconsax.image,
                title: 'HD Image quality ',
                subTitle: 'Set Image quality to be seen',
                trailing: Switch(value: false, onChanged: (value){}),),
              /// Logout Button
              const SizedBox(height: TSize.spaceBtwSections,),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: (){}, child: Text('Logout')),
              ),
              const SizedBox(height: TSize.spaceBtwSections*2.5,)
            ],
          ),
          )
        ],
      ),
    ) ,
  );
  }
}