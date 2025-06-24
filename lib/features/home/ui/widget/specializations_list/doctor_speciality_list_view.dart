import 'package:doctor_app/features/home/data/models/specialization_response.dart';
import 'package:doctor_app/features/home/ui/widget/specializations_list/doctors_specialization_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationData?> specializationDataList;

  const DoctorSpecialityListView(
      {super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (context, index) {
          return DoctorsSpecializationListviewItem(
            index: index,
            specializationData: specializationDataList[index],
          );
        },
      ),
    );
  }
}
