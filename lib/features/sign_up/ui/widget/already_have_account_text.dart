import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: ' Login',
            style: TextStyles.font14BlueMedium,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pop();
              },
          ),
        ],
      ),
    );
  }
}