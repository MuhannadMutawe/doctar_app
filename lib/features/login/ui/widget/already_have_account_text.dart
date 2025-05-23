import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?  ',
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyles.font14BlueMedium,
          ),
        ],
      ),
    );
  }
}
