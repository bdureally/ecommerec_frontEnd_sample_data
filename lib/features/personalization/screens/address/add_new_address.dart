import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/Size.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Add New Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Form(
              child: Column(
                children: [
                  TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name'),),
                  const SizedBox(height: TSize.spaceBetweenInputField,),
                 TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Phone Number'),),
                  const SizedBox(height: TSize.spaceBetweenInputField,),
                  Row(
                    children: [
                      Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'street'),)),
                      const SizedBox(width: TSize.defaultSpace,),
                      Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'postal code'),))
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBetweenInputField,),
                  Row(
                    children: [
                      Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'city'),)),
                      const SizedBox(width: TSize.defaultSpace,),
                      Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'Space'),)),
                      
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBetweenInputField,),
                  TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Country'),),
                  const SizedBox(height: TSize.defaultSpace,),
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text('Save')),)
                ],
              ),
          ),
        ),
      ),
    );
  }
}
