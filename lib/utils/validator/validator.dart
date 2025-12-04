class TValidator{
  static String? validateEmail(String value){
    if(value.isEmpty){
      return 'Email is required';
    }
    // regular expression for email validation
    final emailRegExp=RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String value){
    if(value.isEmpty){
      return 'Password is required';
    }
    // check for minimum password length
    if(value.length<6){
      return 'Password must be at least 6 character long';
    }
    // check for uppercase letters
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain one uppercase letter ';
    }
    // check for numbers
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain one number';
    }
    // check for spacial character
    if(!value.contains(RegExp(r'!@#$%^&*(),.?":{}<>]'))){
      return 'Password must contain one spacial character';
    }
    return null;
  }
  
  static String? validatePhoneNumber(String value){
    if(value.isEmpty){
      return 'Phone Number is required';
    }
    // regular expression for phone number validation by assuming 10 digit phoneNumber format
    final phoneRegExp = RegExp(r'^\d{10}$');
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digit required) ';
    }
    return null;
  }
}