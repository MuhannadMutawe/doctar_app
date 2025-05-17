import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:doctor_app/core/widget/app_text_bottom.dart';
import 'package:doctor_app/core/widget/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/already_have_account_text.dart';
import 'widget/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKry = GlobalKey<FormState>();
  bool _isObscureText = true;

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
                Form(
                  key: _formKry,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: 'Email',
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      AppTextFormField(
                        hintText: 'Password',
                        obscureText: _isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isObscureText = !_isObscureText;
                            });
                          },
                          child: Icon(
                            _isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
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
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TermsAndConditionsText(),
                      SizedBox(
                        height: 50.h,
                      ),
                      AlreadyHaveAccountText(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}