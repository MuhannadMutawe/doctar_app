import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class GetStartBottom extends StatelessWidget {
  const GetStartBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pushNamedAndRemoveUntil(Routes.loginScreen,predicate: (route) => route.isCurrent,),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )
        )
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteMedium,
      ),
    );
  }
}
