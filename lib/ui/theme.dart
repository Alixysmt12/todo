import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFFF4667);
const Color darkClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);
const Color white = Colors.white;
const Color primaryClr = bluishClr;

class AppTheme {
////============> theme data is like your style.xml

  static final light = ThemeData(
      backgroundColor: Colors.white,
      primaryColor: primaryClr,
      brightness: Brightness.light);

  static final dark = ThemeData(
      backgroundColor: darkClr,
      primaryColor: darkClr,
      brightness: Brightness.dark);
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Get.isDarkMode?Colors.grey[100]:Colors.grey[600]));
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,color: Get.isDarkMode?Colors.grey[400]:Colors.grey));
}


TextStyle get titleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Get.isDarkMode?Colors.grey[400]:Colors.grey));
}
