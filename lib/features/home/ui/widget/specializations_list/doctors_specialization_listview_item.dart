import 'package:doctor_app/features/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/text_styles.dart';

class DoctorsSpecializationListviewItem extends StatelessWidget {

  final int index;
  final SpecializationData? specializationData;

  const DoctorsSpecializationListviewItem({super.key, required this.index, required this.specializationData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: index == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.grey.shade300,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          SizedBox(height: 8,),
          Text(specializationData!.name ?? 'general',style: TextStyles.font14DarkBlueMedium,)
        ],
      ),
    );
  }
}
