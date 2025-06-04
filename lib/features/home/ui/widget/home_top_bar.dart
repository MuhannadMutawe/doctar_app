import 'package:doctor_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Hi, Muhannad!',style: TextStyles.font18DarkBlueMedium,),
            SizedBox(height: 2.h,),
            Text('How are you today ?',style: TextStyles.font13GrayNormal,),
          ],
        ),
        Spacer(),
        SvgPicture.asset(
          'assets/svgs/notifications.svg',
          width: 25.w,
          height: 25.h,
        ),
      ],
    );
  }
}
