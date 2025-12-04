import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/features/shop/screens/orders/widgets/order_list.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appBar
      appBar: TAppBar(title: Text('My Order',style: Theme.of(context).textTheme.headlineSmall,),),
      body: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
      /// Orders
      child: TOrderListItems(),
      ),
    );
  }
}
