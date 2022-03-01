import 'package:flutter/material.dart';

final formKey = GlobalKey<FormState>();
String pattern = r"[!-/:-@[-`{-~]";
RegExp regex = RegExp(pattern);
final validCharacters = RegExp(r'[а-я]');
var email_valid;
var pass_valid;

//Password
String? passwordValidation(String? value) {
  if (value!.length < 6 ||
      regex.hasMatch(value) ||
      validCharacters.hasMatch(value)) {
    return 'Password is not valid';
  }
  return email_valid = null;
}

//Obscure

String? emailValidation(String? value) {
  if (!value!.contains('@') ||
      value.length < 6 ||
      validCharacters.hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return pass_valid = null;
}
