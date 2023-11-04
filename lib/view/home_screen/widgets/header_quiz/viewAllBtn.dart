import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../res/colors/AppColor.dart';

class ViewAllBtn extends StatelessWidget {
  ViewAllBtn({required this.string, required this.onPressed, super.key});
  final string;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        string,
        style: TextStyle(
            backgroundColor: AppColor.whiteColor.withOpacity(0.25),
            color: AppColor.secondaryTextColor,
            fontSize: 20.sp,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
