import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/features/personalization/screens/address/add_new_address.dart';
import 'package:ecom_ethio/features/personalization/screens/address/widgets/single_address.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/Colors.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        backgroundColor: TColors.primary,
        child: const Icon(Iconsax.add, color: TColors.white),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
              children: [
                TSingleAddress(selectedAddress: false),
                TSingleAddress(selectedAddress: true),
          ]
          ),
        ),
      ),
    );
  }
}
