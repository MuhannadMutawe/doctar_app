import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:doctor_app/core/widget/app_text_bottom.dart';
import 'package:doctor_app/features/login/logic/login_cubit.dart';
import 'package:doctor_app/features/login/ui/widget/do_not_have_account_text.dart';
import 'package:doctor_app/features/login/ui/widget/email_and_password.dart';
import 'package:doctor_app/features/login/ui/widget/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'widget/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font13GrayNormal,
                ),
                SizedBox(
                  height: 36.h,
                ),
                Column(
                  children: [
                    EmailAndPassword(),
                    SizedBox(
                      height: 14.h,
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forget Password?',
                        style: TextStyles.font14BlueMedium,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AppTextBottom(
                      buttonText: 'Login',
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TermsAndConditionsText(),
                    SizedBox(
                      height: 50.h,
                    ),
                    DoNotHaveAccountText(),
                    LoginBlocListener()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKry.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
