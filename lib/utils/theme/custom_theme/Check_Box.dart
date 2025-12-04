import 'package:flutter/material.dart';
class TCheckboxTheme{
  TCheckboxTheme._();
  // light check box theme
static final lightCheckBoxThemeData=CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: WidgetStateProperty.resolveWith((states){
    if(states.contains(WidgetState.selected)){
      return Colors.blue;
    }
    else{
      return Colors.black;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((state){
    if(state.contains(WidgetState.selected)){
      return Colors.blue;
    }
    else{
      return Colors.transparent;
    }
  })
);
// dark check box them
static final darkCheckBoxTheme=CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: WidgetStateProperty.resolveWith((states){
    if(states.contains(WidgetState.selected)){
      return Colors.white;
    }
    else{
      return Colors.black;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((states){
    if(states.contains(WidgetState.selected)){
      return Colors.blue;
    }
    else{
      return Colors.transparent;
    }
  })
);
}
