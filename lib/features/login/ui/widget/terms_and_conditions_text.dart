import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By Logging, You agree to our  ',
            style: TextStyles.font13GrayNormal,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: 'And  ',
            style: TextStyles.font13GrayNormal.copyWith(height: 1.4.h),
          ),
          TextSpan(
            text: 'Privacy policy',
            style: TextStyles.font14DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
