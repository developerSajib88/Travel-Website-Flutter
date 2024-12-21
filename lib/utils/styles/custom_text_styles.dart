
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomTextStyles {

  static TextStyle primaryTextStyles = GoogleFonts.poppins(
      fontSize: 15.sp,
      color: Colors.black,
      fontWeight: FontWeight.bold
  );


  static TextStyle secondaryTextStyles = GoogleFonts.poppins(
      fontSize: 12.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600
  );


  static TextStyle header = GoogleFonts.poppins(
      fontSize: 55.sp,
      color: ColorPalates.secondaryColor,
      fontWeight: FontWeight.w700
  );

  static TextStyle titleTextStyles = GoogleFonts.poppins(
      fontSize: 12.sp,
      color: ColorPalates.primaryColor,
      fontWeight: FontWeight.bold
  );


  static TextStyle descriptionTextStyles = GoogleFonts.poppins(
      fontSize: 12.sp,
      color: ColorPalates.secondaryColor,
      fontWeight : FontWeight.normal
  );


  static TextStyle buttonTextStyles = GoogleFonts.poppins(
      fontSize: 15.sp,
      color: ColorPalates.defaultWhite,
      fontWeight: FontWeight.normal
  );

}