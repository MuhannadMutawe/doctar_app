import 'package:doctor_app/features/home/ui/widget/doctor_blue_container.dart';
import 'package:doctor_app/features/home/ui/widget/doctor_speciality_see_all.dart';
import 'package:doctor_app/features/home/ui/widget/home_top_bar.dart';
import 'package:doctor_app/features/home/ui/widget/specializations_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              18.w,
              16.h,
              18.w,
              18.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeTopBar(),
                const DoctorBlueContainer(),
                SizedBox(
                  height: 16.h,
                ),
                const DoctorSpecialitySeeAll(),
                SizedBox(
                  height: 16.h,
                ),
                const SpecializationsAndDoctorsBlocBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
