import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/colors/AppColor.dart';
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
        borderRadius: BorderRadius.circular(25),
        child: Container(
          height: 45,
          width: 216,
          decoration: BoxDecoration(
            color: AppColor.whiteColor.withOpacity(0.25),
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(25),
          ),
          constraints: BoxConstraints(minHeight: 45, minWidth: 216),
          padding: EdgeInsets.symmetric(horizontal: 18),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Title",
                style: TextStyle(fontSize: 18, color: Colors.white),
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
