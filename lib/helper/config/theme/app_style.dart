import 'package:allyskymerchant/helper/config/theme/colors_scheme.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle header1({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 32,
      color: color ?? ThemeColors.black,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  static TextStyle body({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 16,
      color: color ?? ThemeColors.black,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  static TextStyle body4({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 20,
      color: color ?? ThemeColors.black,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  static TextStyle body1({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 24,
      color: color ?? ThemeColors.black,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  static TextStyle body2({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 32,
      color: color ?? ThemeColors.black,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  static TextStyle body3({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 40,
      color: color ?? ThemeColors.black,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }
}
