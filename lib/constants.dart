import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGrandientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E),Color(0xFFFF7643)]
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(microseconds: 200);

const String kEmailNullError = 'Please enter your email';
const String kPasswordNullError = 'Please enter your password';
const String kShortPassEnter = 'Password os too short';
const String kMatchPassError = "Passwords don't match";