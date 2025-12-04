import 'package:ecom_ethio/Navigation_menu.dart';
import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/common/widget/custom_shapes/container/trounded_container.dart';
import 'package:ecom_ethio/common/widget/success_screen/success_screen.dart';
import 'package:ecom_ethio/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecom_ethio/features/shop/screens/checkOut/widgets/billing_address_section.dart';
import 'package:ecom_ethio/features/shop/screens/checkOut/widgets/billing_amount_section.dart';
import 'package:ecom_ethio/features/shop/screens/checkOut/widgets/billing_payment_section.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:ecom_ethio/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/product/cart/coupon_widget.dart';
import '../../../../utils/constants/Colors.dart';


class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Order Review',
            style: Theme
                .of(context)
                .textTheme
                .headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [

                /// Items In Cart
                TCartItems(showAddRemoveButton: true),
                const SizedBox(height: TSize.spaceBtwSections),

                /// coupon TextField
                TCouponCode(),
                const SizedBox(height: TSize.spaceBtwSections),

                /// Building Section
                TRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(TSize.sm),
                  backGroundColor: dark ? TColors.black : TColors.white,
                  child: Column(
                    children: [

                      ///Pricing
                      TBillingAmountSection(),
                      const SizedBox(height: TSize.spaceBtwItems,),

                      /// Divider
                      const Divider(),
                      const SizedBox(height: TSize.spaceBtwSections,),

                      /// Payment Method
                      TBillingPaymentSection(),
                      const SizedBox(height: TSize.spaceBtwItems,),

                      /// Address
                      TBillingAddressSection(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: ElevatedButton(onPressed: () =>
              Get.to(() =>
                  SuccessScreen(image: 'assets/payment/img_1.png',
                      title: 'Payment SuccessFull',
                      subTitle: 'Your Item Will be shipped soon',
                      onPressed: () => Get.offAll(() => NavigationMenu()
                      )
                  ),
              ),
                   child: Text('CheckOut \$256.0'),
          )
          ),
        );
    }
}


