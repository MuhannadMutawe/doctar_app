import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/Get_start_bottom.dart';
import 'widget/doc_logo_and_name.dart';
import 'widget/doctor_image_and_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(
                  height: 40.h,
                ),
                DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13Gray400,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40.h,),
                      GetStartBottom()
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
