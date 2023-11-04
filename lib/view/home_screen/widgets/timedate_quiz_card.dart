import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/colors/AppColor.dart';

class TimeDateQuizCard extends StatelessWidget {
  final timeDate;
  TimeDateQuizCard({super.key, required this.timeDate});

  @override
  Widget build(BuildContext context) {
    return Text(
      timeDate,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.bold,
        color: AppColor.blackColor,
      ),
    );
  }
}
