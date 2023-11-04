import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/colors/AppColor.dart';

class TitleQuizCard extends StatelessWidget {
  final title;
  TitleQuizCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryTextColor,
          shadows: [
            Shadow(
                color: AppColor.textShadowColor,
                offset: Offset(0.w, 2.h),
                blurRadius: 4.r)
          ]),
    );
  }
}
