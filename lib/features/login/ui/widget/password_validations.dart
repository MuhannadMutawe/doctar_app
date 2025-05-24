import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacters,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationsRow('At lease 1 lowercase letter', hasLowerCase),
        SizedBox(height: 2,),
        buildValidationsRow('At lease 1 uppercase letter', hasUpperCase),
        SizedBox(height: 2,),
        buildValidationsRow('At lease 1 number', hasNumber),
        SizedBox(height: 2,),
        buildValidationsRow('At lease 1 special characters', hasSpecialCharacters),
        SizedBox(height: 2,),
        buildValidationsRow('At lease 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationsRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.gray,
          radius: 2.5,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          text,
          style: TextStyles.font14DarkBlueMedium.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? AppColors.gray : AppColors.darkBlue
          ),
        )
      ],
    );
  }
}
