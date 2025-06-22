import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/ui/widget/doctor_blue_container.dart';
import 'package:doctor_app/features/home/ui/widget/doctor_speciality_list_view.dart';
import 'package:doctor_app/features/home/ui/widget/doctor_speciality_see_all.dart';
import 'package:doctor_app/features/home/ui/widget/doctors_list_view.dart';
import 'package:doctor_app/features/home/ui/widget/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) =>
                      current is SpecializationLoading ||
                      current is SpecializationSuccess ||
                      current is SpecializationFailure,
                  builder: (context, state) {
                    return SizedBox();
                  },
                )
                // const DoctorSpecialityListView(),
                // SizedBox(height: 2.h,),
                // const DoctorsListView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
