import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles{
  static TextStyle font24BlockBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black
  );

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.mainBlue
  );

  static TextStyle font24BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.mainBlue
  );

  static TextStyle font13GrayNormal = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.normal,
      color: AppColors.gray
  );

  static TextStyle font13BlueNormal = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.normal,
      color: AppColors.mainBlue
  );

  static TextStyle font14LightGrayNormal = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.normal,
      color: AppColors.lightGray
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.darkBlue
  );

  static TextStyle font18DarkBlueMedium = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.darkBlue
  );

  static TextStyle font18whiteMedium = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.medium,
      color: Colors.white
  );

  static TextStyle font14BlueMedium = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.mainBlue
  );

  static TextStyle font16WhiteMedium = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.medium,
      color: Colors.white
  );
}