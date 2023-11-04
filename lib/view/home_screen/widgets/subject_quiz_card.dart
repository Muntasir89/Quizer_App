import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/colors/AppColor.dart';

class SubjectQuizCard extends StatelessWidget {
  final subject;
  SubjectQuizCard({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Text(
      subject,
      style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
          shadows: [
            Shadow(
              color: AppColor.primaryColor,
              offset: Offset(0.w, 1.h),
              blurRadius: 1.r,
            )
          ]),
    );
  }
}
