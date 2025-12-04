import 'package:ecom_ethio/utils/theme/custom_theme/AppBareTheme.dart';
import 'package:ecom_ethio/utils/theme/custom_theme/Bottom_sheet_theme.dart';
import 'package:ecom_ethio/utils/theme/custom_theme/Check_Box.dart';
import 'package:ecom_ethio/utils/theme/custom_theme/Chip_Theme.dart';
import 'package:ecom_ethio/utils/theme/custom_theme/ElevatedButtonTheme.dart';
import 'package:ecom_ethio/utils/theme/custom_theme/Text_Field_Theme.dart';
import 'package:ecom_ethio/utils/theme/custom_theme/outlind_button_theme.dart';
import 'package:ecom_ethio/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
class TAppTheme{
  TAppTheme._();//this constructor is private
static ThemeData lightTheme=ThemeData(
  useMaterial3: true,
  fontFamily: 'poppins',
  brightness: Brightness.light,
  primaryColor:Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: TAppBarTheme.lightAppBarTheme,
  chipTheme: TChipTheme.lightChipTheme,
  checkboxTheme: TCheckboxTheme.lightCheckBoxThemeData,
  bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
  inputDecorationTheme: TTextFieldTheme.lightInputDecoration,
  textTheme:TTextTheme.lightTextTheme,
  elevatedButtonTheme:TElevatedButtonTheme.lightElevatedButton,
  outlinedButtonTheme: TOutlinedTheme.lightOutlinedTheme



);
static ThemeData darkTheme=ThemeData(
  useMaterial3: true,
  fontFamily: 'poppins',
  brightness: Brightness.dark,
  primaryColor:Colors.blue,
  scaffoldBackgroundColor: Colors.black,
  textTheme:TTextTheme.darkTextTheme,
  elevatedButtonTheme:TElevatedButtonTheme.darkElevatedButtonTheme,
  inputDecorationTheme: TTextFieldTheme.darkInputDecoration,
  bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
  appBarTheme: TAppBarTheme.blackAppBarTheme,
  chipTheme: TChipTheme.darkChipTheme,
  checkboxTheme: TCheckboxTheme.darkCheckBoxTheme,
  outlinedButtonTheme: TOutlinedTheme.darkOutlinedTheme
);
}