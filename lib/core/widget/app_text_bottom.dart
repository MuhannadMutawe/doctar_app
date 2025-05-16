import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/text_styles.dart';

class AppTextBottom extends StatelessWidget {
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final VoidCallback onPressed;

  const AppTextBottom({
    super.key,
    this.borderRadius,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.buttonText,
    this.backgroundColor,
    this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
              vertical: verticalPadding ?? 14.h,
              horizontal: horizontalPadding ?? 12.w),
        ),
        backgroundColor:
            WidgetStateProperty.all(backgroundColor ?? AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          Size(buttonWidth ?? double.infinity, buttonHeight ?? 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle ?? TextStyles.font16WhiteMedium,
      ),
    );
  }
}
