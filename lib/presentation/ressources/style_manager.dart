import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily,FontWeight fontWeight, Color color){
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color
  );
}

// return regular style

TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstatns.fontFamily,FontWeightManager.regular, color);
}


// return light style
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstatns.fontFamily,FontWeightManager.light, color);
}

// return bold style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstatns.fontFamily,FontWeightManager.bold, color);
}

// return medium style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstatns.fontFamily,FontWeightManager.medium, color);
}

// return semi bold style
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required Color color}){
  return _getTextStyle(fontSize, FontConstatns.fontFamily,FontWeightManager.semiBold, color);
}