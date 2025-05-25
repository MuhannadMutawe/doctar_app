
import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:doctor_app/core/widget/app_text_bottom.dart';
import 'package:doctor_app/features/login/ui/widget/terms_and_conditions_text.dart';
import 'package:doctor_app/features/sign_up/logic/sign_up_cubic.dart';
import 'package:doctor_app/features/sign_up/ui/widget/already_have_account_text.dart';
import 'package:doctor_app/features/sign_up/ui/widget/sign_up_bloc_listener.dart';
import 'package:doctor_app/features/sign_up/ui/widget/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, right:25.w ,top: 30.h,bottom: 15.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                SizedBox(height: 8,),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font13GrayNormal,
                ),
                SizedBox(height: 36,),
                Column(
                  children: [
                    const SignupForm(),
                    SizedBox(height: 40,),
                    AppTextBottom(
                      buttonText: "Create Account",
                      textStyle: TextStyles.font16WhiteMedium,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    SizedBox(height: 18,),
                    const TermsAndConditionsText(),
                    SizedBox(height: 30,),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKry.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
