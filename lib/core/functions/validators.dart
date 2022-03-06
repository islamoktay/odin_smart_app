bool emailValidator(String value) {
  String pattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z.]{2,400}$";
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

bool isSameTextValidator(String valueOne, String valueTwo) {
  if (valueOne == valueTwo) {
    return true;
  } else {
    return false;
  }
}
