import 'package:flutter/material.dart';
import 'package:quizer/core/colors/AppColor.dart';
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
      height: 120,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          padding: EdgeInsets.symmetric(vertical: 5),
          itemBuilder: (context, index) {
            return Container(
              width: 170,
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 7),
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
              //color: AppColorhiteColor,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
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
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 0.5),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleQuizCard(title: "Quiz title"),
                  SizedBox(
                    height: 10,
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
