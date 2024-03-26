String? emptyStringValidator(String? val) {
  String string = val!.trim();

  if (string.isEmpty) {
    return "This field is required";
  } else {
    return null;
  }
}

//  ID CARD VALIDATOR
String? validateExpression(String? value) {
  // Regular expression pattern to match the given expression format
  RegExp regex = RegExp(r'^\d{5}-\d{7}-\d$');
  if (value!.isEmpty) {
    return 'Expression field cannot be empty.';
  } else if (!regex.hasMatch(value)) {
    return 'Invalid cnic  hint "37405-7384570-1"';
  }
  return null;
}

String? passwordValidator(String? v) {
  RegExp smallAlphabets = RegExp("(?=.*?[a-z])");
  RegExp capitalAlphabets = RegExp("(?=.*?[A-Z])");
  RegExp specialCharacter = RegExp("(?=.*?[#?!@\$%^&*-])");
  String string = v!.trim();
  if (string.isEmpty) {
    return 'Please enter the password';
  } else if (string.length < 6 || string.length > 25) {
    return 'Password length should be in between 6 and 25';
  } else if (!smallAlphabets.hasMatch(string)) {
    return 'Password must includes at least one lower case English letter. ';
  } else if (!capitalAlphabets.hasMatch(string)) {
    return 'Password must includes at least one upper case English letter.';
  } else if (!specialCharacter.hasMatch(string)) {
    return 'Password must includes at least one special character.';
  } else {
    return null;
  }
}

String? emailValidator(String? v) {
  String string = v!.trim();
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
      .hasMatch(string);

  if (string.isEmpty) {
    return 'Please enter your email';
  } else if (!emailValid) {
    return 'Please enter a valid email';
  } else {
    return null;
  }
}

String? cnicValidator(String? v) {
  String string = v!.trim();
  bool cnicValid = RegExp("^[0-9]{5}-[0-9]{7}-[0-9]\$").hasMatch(string);

  if (string.isEmpty) {
    return 'Please enter your CNIC';
  } else if (!cnicValid) {
    return 'Please enter a valid CNIC  XXXXX-XXXXXXX-X  ';
  } else {
    return null;
  }
}
