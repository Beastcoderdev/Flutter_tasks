import 'package:flutter/material.dart';
import 'package:taskati/code/utils/colors.dart';

// can put custom value if I didn't. it will return to default values
TextStyle getTitleTextStyle(
  {double? fontSize, Color? color, FontWeight? fontWeight}){
 return TextStyle(
  fontSize: fontSize ?? 20,
  fontWeight: fontWeight?? FontWeight.bold,
  color: color ?? AppColors.blackColor,
 );

}
 
