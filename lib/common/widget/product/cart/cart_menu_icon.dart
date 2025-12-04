import 'package:ecom_ethio/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.onPressed,  required this.iconColor, this.bagColor, this.circularIconColor,
  });
  final VoidCallback onPressed;
  final Color iconColor;
  final Color? bagColor;
  final Color? circularIconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed:()=>Get.to(()=>CartScreen()), icon: Icon(Iconsax.shopping_bag,color: bagColor,)),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: circularIconColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: iconColor,fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}

