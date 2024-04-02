import 'package:flutter/material.dart';
import 'package:quizer/core/colors/AppColor.dart';
import 'package:quizer/core/values/app_values.dart';
import 'package:quizer/view/home_screen/widgets/subject_quiz_card.dart';
import 'package:quizer/view/home_screen/widgets/title_quiz_card.dart';
import 'package:quizer/view/home_screen/widgets/timedate_quiz_card.dart';

class QuizList extends StatelessWidget {
  final type;
  QuizList({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 120,
      alignment: Alignment.center,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          padding: all5,
          itemBuilder: (context, index) {
            return Container(
              width: 170,
              height: 110,
              margin: symmetric_h5,
              padding: symmetric_h10,
              //color: AppColorhiteColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppColor.whiteColor.withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleQuizCard(title: "Quiz title"),
                  gap_v10,
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
