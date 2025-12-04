import 'package:flutter/material.dart';
class TChipTheme{
  TChipTheme._();
  //light chipTheme
  static final lightChipTheme=ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor:   Colors.white,
  );
  // dark mode chipTheme
  static final darkChipTheme=ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor:   Colors.white,
  );
}