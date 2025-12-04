import 'package:flutter/material.dart';
class TColors{
  TColors._();
  // App basic colors
  static const primary=Color(0xFF4b68ff);
  static const secondary=Color(0xFFFFE28B);
  static const accent=Color(0xFFb0c7ff);
  // Gradiant Color
  static const linerGradiant=LinearGradient(
    begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),

      ]);

  // Text Color
  static const textPrimary=Color(0xFF333333);
  static const textSecondary=Color(0xFF6C757D);
  static const textWhite=Colors.white;

  //Background color
static const light=Color(0xFFF6F6F6);
static const dark=Color(0xFF272727);
static const primaryBackground=Color(0xFFF3F5FF);

//Background container Color
static const lightContainer=Color(0x0ff6f6f6);
// in here there has a remaining variable

// Button Colors
static const buttonPrimary=Color(0xFF4b68ff);
static const buttonSecondary=Color(0xFF6C7570);
static const buttonDisabled=Color(0x0ffc4cc4);

// Border Color
static const borderPrimary=Color(0xFFD9D9D9);
static const borderSecondary=Color(0x0ffe6e6e);

// Error and Validation Color
static const error=Color(0xFFD32F2F);
static const success=Color(0xFF388E3C);
static const warning=Color(0xFFF57C00);
static const info=Color(0xFF1976D2);

// Natural shades
static const black=Color(0xFF232323);
static const darkerGrey=Color(0xFF4F4F4F);
static const darkGrey=Color(0xFF939393);
static const grey=Color(0xFFE0E0E0);
static const softGrey=Color(0xFFF4F4F4);
static const lightGrey=Color(0xFFF9F9F9);
static const white=Color(0xFFFFFFFF);
}