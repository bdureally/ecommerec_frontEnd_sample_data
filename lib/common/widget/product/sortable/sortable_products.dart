import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/Size.dart';
import '../../layout/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';
class TSortableProduct extends StatelessWidget {
  const TSortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          onChanged: (value) {},
          items: ['Name', 'Price', 'Lower Price', 'Sale', 'Newest', 'Popularity',]
              .map((option) => DropdownMenuItem(value:option,child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: TSize.spaceBtwSections,),
        /// products
        TGridLayout(itemCount: 4,mainAxisExtent: 280, itemBuilder: (_,index)=>TProductCardVertical())
      ],
    );
  }
}
