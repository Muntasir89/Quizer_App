import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../res/colors/AppColor.dart';
import '../../../../view_model/home/subject_dropdown/subjectDropDownController.dart';

class SubjectHead extends StatelessWidget {
  const SubjectHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          Get.find<SubjectDropDownController>().startAniamation();
        },
        borderRadius: BorderRadius.circular(25).r,
        child: Container(
          height: 45.h,
          width: 216.w,
          decoration: BoxDecoration(
            color: AppColor.whiteColor.withOpacity(0.25),
            border: Border.all(color: Colors.grey, width: 1.w),
            borderRadius: BorderRadius.circular(25).r,
          ),
          constraints: BoxConstraints(minHeight: 45.h, minWidth: 216.w),
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Title",
                style: TextStyle(fontSize: 18.sp, color: Colors.white),
              ),
              Obx(
                () => AnimatedRotation(
                  turns: Get.find<SubjectDropDownController>().rotation.value,
                  duration: Duration(milliseconds: 300),
                  child: Icon(
                    // isStrechedDropDown
                    //     ? Icons.keyboard_arrow_up_sharp
                    Icons.keyboard_arrow_down_sharp,
                    color: AppColor.whiteColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
