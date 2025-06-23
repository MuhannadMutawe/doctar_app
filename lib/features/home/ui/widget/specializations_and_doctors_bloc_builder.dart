import 'package:doctor_app/features/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctor_speciality_list_view.dart';
import 'doctors_list_view.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () => setUpLoading(),
          specializationsSuccess: (specializationDataList) =>
              setUpSuccess(specializationDataList ?? []),
          specializationsError: (errorHandler) => SizedBox(),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }

  Widget setUpLoading() {
    return Shimmer(
      gradient: LinearGradient(
        colors: [
          Colors.white10,
          Colors.white30,
          Colors.white60,
        ],
      ),
      child: Column(
        children: [
          Container(),
          SizedBox(
            height: 2.h,
          ),
          Container(),
        ],
      ),
    );
  }

  Widget setUpSuccess(List<SpecializationData?> specializationDataList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            specializationDataList: specializationDataList,
          ),
          SizedBox(
            height: 2.h,
          ),
          DoctorsListView(
            doctorsList: specializationDataList!.first!.doctorsList,
          )
        ],
      ),
    );
  }
}
