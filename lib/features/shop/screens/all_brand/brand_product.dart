import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/common/widget/brand/TBrandCard.dart';
import 'package:ecom_ethio/common/widget/product/sortable/sortable_products.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';
class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Nike'),),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            /// Brand detail
            TBrandCard(showBorder: true),
            SizedBox(height: TSize.spaceBtwSections,),

            TSortableProduct(),
          ],
        ),
        ),
      ),
    );
  }
}
