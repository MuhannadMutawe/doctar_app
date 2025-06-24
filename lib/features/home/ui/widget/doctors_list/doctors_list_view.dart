import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:doctor_app/features/home/data/models/specialization_response.dart';
import 'package:doctor_app/features/home/ui/widget/doctors_list/doctors_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {

  final List<Doctors?>? doctorsList;

  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: doctorsList!.length,
      itemBuilder: (context, index) {
        return DoctorsListviewItem(
          doctors: doctorsList![index],
        );
      },
    );
  }
}
