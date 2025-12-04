import 'package:ecom_ethio/common/widget/appBar/appBar.dart';
import 'package:ecom_ethio/common/widget/image/t_rounded_image.dart';
import 'package:ecom_ethio/common/widget/product/product_cards/product_card_horizontal.dart';
import 'package:ecom_ethio/common/widget/text/section_heading.dart';
import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';
class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports shirt'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// Banner
              TRoundedImage(width:double.infinity,imagUrl: 'assets/images/onbording/img_24.png',applyImageRadius: true,),
              SizedBox(height: TSize.spaceBtwSections,),
              /// sub-Categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sports shirts',onPressed: (){},),
                  const SizedBox(height: TSize.spaceBtwItems/2,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      //shrinkWrap: true,
                      //physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        separatorBuilder: (_,_)=>const SizedBox(width: TSize.spaceBtwItems,),
                        itemBuilder: (context,index){
                      return const TProductCardHorizontal();
                    }
                    ),
                  ),
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
