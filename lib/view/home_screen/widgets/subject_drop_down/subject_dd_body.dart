import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/view_model/home/subject_dropdown/subjectDropDownController.dart';

class SubjectDropDownBody extends StatelessWidget {
  SubjectDropDownBody({super.key});

  List<String> listItem = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: Get.find<SubjectDropDownController>().expandAnimation,
      axis: Axis.vertical,
      axisAlignment: 1.0,
      child: Material(
        type: MaterialType.transparency,
        child: ListView.builder(
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            shrinkWrap: true,
            itemCount: listItem.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  //  expandControl.startAniamation();
                },
                borderRadius: (index == 0)
                    ? BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        topRight: Radius.circular(25.r))
                    : (index == listItem.length - 1)
                        ? BorderRadius.only(
                            bottomLeft: Radius.circular(25.r),
                            bottomRight: Radius.circular(25.r))
                        : null,
                child: Container(
                  height: 45.h,
                  width: 216.w,
                  color: AppColor.primaryButtonColor,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 0),
                  child: Text(
                    listItem.elementAt(index),
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                    // overflow: ,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
