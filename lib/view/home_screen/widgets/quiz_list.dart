import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/view/home_screen/widgets/subject_quiz_card.dart';
import 'package:quizer/view/home_screen/widgets/title_quiz_card.dart';
import 'package:quizer/view/home_screen/widgets/timedate_quiz_card.dart';

class QuizList extends StatelessWidget {
  final type;
  QuizList({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final List<List<Color>> quizCardColors = [
      [AppColor.pinkTopCenter, AppColor.pinkBottomCenter],
      [AppColor.orangeTopCenter, AppColor.orangeBottomCenter],
      [AppColor.yellowTopCenter, AppColor.yellowBottomCenter],
      [AppColor.greenTopCenter, AppColor.greenBottomCenter],
    ];

    return Container(
      // color: Colors.amber,
      height: 120.h,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10.h),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          padding: EdgeInsets.symmetric(vertical: 5.h),
          itemBuilder: (context, index) {
            return Container(
              width: 170.w,
              height: 110.h,
              margin: EdgeInsets.symmetric(horizontal: 7.w),
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
              //color: AppColor.whiteColor,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: AppColor.whiteColor,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      quizCardColors[(index + (type == "Upcoming" ? 0 : 3)) %
                          quizCardColors.length][0],
                      quizCardColors[(index + (type == "Upcoming" ? 0 : 3)) %
                          quizCardColors.length][1],
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.innerBoxShadowColor,
                        offset: Offset(2.0.w, 2.0.h),
                        blurRadius: 5.0.r,
                        spreadRadius: 0.5.r),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleQuizCard(title: "Quiz title"),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubjectQuizCard(subject: "Javascript"),
                        Column(
                          children: [
                            TimeDateQuizCard(timeDate: "time\n01 Jan 2023")
                          ],
                        )
                      ])
                ],
              ),
            );
          }),
    );
  }
}
