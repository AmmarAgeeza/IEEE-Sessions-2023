import 'package:flutter/material.dart';

import 'app_fonts.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: AppFonts.fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = AppFonts.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.regular, color);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = AppFonts.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.medium, color);
}

// medium style

TextStyle getLightStyle(
    {double fontSize = AppFonts.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.light, color);
}

// bold style

TextStyle getBoldStyle({double fontSize = AppFonts.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.bold, color);
}

// semibold style

TextStyle getSemiBoldStyle(
    {double fontSize = AppFonts.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.semiBold, color);
}
