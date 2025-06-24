import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/text_styles.dart';
import '../../../data/models/specialization_response.dart';

class DoctorsListviewItem extends StatelessWidget {

  final Doctors? doctors;

  const DoctorsListviewItem({super.key, this.doctors});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              width: 110.w,
              height: 120.h,
              'https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctors?.name ?? 'name',
                  style: TextStyles.font18DarkBlueSemiBold,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '${doctors?.degree} | ${doctors?.phone}',
                  style: TextStyles.font13GrayNormal,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  doctors?.email ??'Email@email.com',
                  style: TextStyles.font13GrayNormal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
