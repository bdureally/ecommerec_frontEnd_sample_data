import 'package:ecom_ethio/utils/constants/Size.dart';
import 'package:flutter/material.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent=288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
       shrinkWrap: true,
       physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSize.gridViewSpacing,// the length of one individual product
        crossAxisSpacing: TSize.gridViewSpacing,
        mainAxisExtent: mainAxisExtent, // it is the height of each grid item in vertical scrollable grid if the grid is horizontal scrollable it tells the width of the grid
      ),
      itemBuilder:itemBuilder,
    );
  }
}
