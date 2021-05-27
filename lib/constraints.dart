import 'package:building/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor=Color(0xff688B9B);
const kPrimaryColorLight=Color(0xffCAE1D4);
const lPrimaryGradientColor=LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xff529B71),Color(0xff5FDF95)],

);
const kSecondaryColor=Color(0xffB37A32);
const kTextColor=Color(0xff000000);
const kAnimationDuration=Duration(milliseconds: 200);

//form Error

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
//const String kAddressNullError = "Please Enter your address";
//
final otpInputDecoration=InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: getProptionateScreenWidth(15)),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),

);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: BorderSide(color: kTextColor),
);
}
final headingStyle=TextStyle(
  fontSize: getProptionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
//final otpInputDecoration = InputDecoration(
//  contentPadding:
//  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
//  border: outlineInputBorder(),
//  focusedBorder: outlineInputBorder(),
//  enabledBorder: outlineInputBorder(),
//);
//
//OutlineInputBorder outlineInputBorder() {
//  return OutlineInputBorder(
//    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
//    borderSide: BorderSide(color: kTextColor),
//  );
//}
