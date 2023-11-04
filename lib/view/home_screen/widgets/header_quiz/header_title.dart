import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../res/colors/AppColor.dart';

class HeaderTitle extends StatelessWidget {
  final title;
  HeaderTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          backgroundColor: AppColor.whiteColor.withOpacity(0.25),
          color: AppColor.whiteColor,
          fontSize: 25.sp,
          fontWeight: FontWeight.w500),
    );
  }
}
