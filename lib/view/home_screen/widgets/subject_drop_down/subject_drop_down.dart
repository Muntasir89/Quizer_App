import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/view_model/home/subject_dropdown/subjectDropDownController.dart';

class SubjectDropDown extends StatelessWidget {
  SubjectDropDown({super.key});

  List<String> listItem = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Material(
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
                      turns:
                          Get.find<SubjectDropDownController>().rotation.value,
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
        ),
        // Subject List -> Animation
        SizeTransition(
          sizeFactor: Get.find<SubjectDropDownController>().expandAnimation,
          axis: Axis.vertical,
          axisAlignment: 1.0,
          child: Container(
            width: 216.w,
            height: 150.h,
            alignment: Alignment.center,
            constraints: BoxConstraints(minHeight: 35.h, minWidth: 216.w),
            margin: EdgeInsets.only(top: 10.h),
            decoration: BoxDecoration(
                color: AppColor.whiteColor.withOpacity(0.25),
                border: Border.all(color: Colors.grey, width: 1.w),
                borderRadius: BorderRadius.circular(25).r),
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
                        alignment: Alignment.centerLeft,
                        padding:
                            EdgeInsets.symmetric(horizontal: 18.h, vertical: 0),
                        child: Text(
                          listItem.elementAt(index),
                          style:
                              TextStyle(fontSize: 18.sp, color: Colors.white),
                          // overflow: ,
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
