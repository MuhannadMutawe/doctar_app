import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final bool? filled;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.hintText,
    this.obscureText,
    this.suffixIcon,
    this.fillColor,
    this.filled,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: filled ?? true,
        fillColor: fillColor ?? AppColors.moreLightGray,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.mainBlue,
                width: 1.2,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.lighterGray,
                width: 1.2,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayNormal,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      cursorColor: AppColors.mainBlue,
      obscureText: obscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      validator: validator,
    );
  }
}
