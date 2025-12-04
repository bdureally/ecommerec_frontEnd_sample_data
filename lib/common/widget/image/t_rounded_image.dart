import 'package:flutter/material.dart';
import '../../../utils/constants/Colors.dart';
import '../../../utils/constants/Size.dart';
class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius=true,
    required this.imagUrl,
    this.fit=BoxFit.contain,
    this.backgroundColor=TColors.light,
    this.isNetworkImage=false,
    this.borderRadius=TSize.md,



  });
  final double? width,height;
  final String imagUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius? BorderRadius.circular(borderRadius):BorderRadius.zero,
          child: Image(fit: fit,image:isNetworkImage? NetworkImage(imagUrl):AssetImage(imagUrl) as ImageProvider,),
        ),
      ),
    );
  }
}