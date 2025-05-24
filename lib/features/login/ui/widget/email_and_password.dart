import 'package:doctor_app/core/helpers/app_regex.dart';
import 'package:doctor_app/core/widget/app_text_form_field.dart';
import 'package:doctor_app/features/login/logic/login_cubit.dart';
import 'package:doctor_app/features/login/ui/widget/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool _hasLowerCase = false;
  bool _hasUpperCase = false;
  bool _hasNumber = false;
  bool _hasSpecialCharacters = false;
  bool _hasMinLength = false;
  bool _isObscureText = true;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void setupPasswordControllerListener() {
    _passwordController.addListener(
      () {
        setState(() {
          _hasLowerCase = AppRegex.hasLowerCase(_passwordController.text);
          _hasUpperCase = AppRegex.hasUpperCase(_passwordController.text);
          _hasSpecialCharacters =
               AppRegex.hasSpecialCharacter(_passwordController.text);
          _hasNumber = AppRegex.hasNumber(_passwordController.text);
          _hasMinLength = AppRegex.hasMinLength(_passwordController.text);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKry,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          SizedBox(
            height: 18.h,
          ),
          AppTextFormField(
            controller: _passwordController,
            hintText: 'Password',
            obscureText: _isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _isObscureText = !_isObscureText;
                });
              },
              child: Icon(
                _isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
              return null;
            },
          ),
          SizedBox(
            height: 14.h,
          ),
          PasswordValidations(
            hasLowerCase: _hasLowerCase,
            hasUpperCase: _hasUpperCase,
            hasNumber: _hasNumber,
            hasSpecialCharacters: _hasSpecialCharacters,
            hasMinLength: _hasMinLength,
          )
        ],
      ),
    );
  }
}
