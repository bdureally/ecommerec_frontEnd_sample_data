import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecom_ethio/features/shop/screens/checkOut/checkOut.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          /// Items In Cart
          child: TCartItems(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(onPressed: ()=>Get.to(()=>const CheckOutScreen()), child: Text('CheckOut \$256.0')),
      ),
    );
  }
}


