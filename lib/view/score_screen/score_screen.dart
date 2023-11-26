import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/res/values/text_style.dart';
import 'package:quizer/view/score_screen/widgets/score_box.dart';

import '../../res/assets/AppAssets.dart';
import '../../res/values/app_values.dart';
import '../../view_model/quiz/quiz_controller.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: symmetric_h25,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: AppColor.whiteColor,
              title: Text(
                "Score",
                style: style_white_bold_18,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "8/10",
                style: style_white_bold_20,
              ),
            ),
            gap_v10,
            Container(
              height: 20,
              padding: symmetric_h4_v2,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: AppColor.whiteColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(r10),
              ),
              child: LayoutBuilder(builder: (context, constraints) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(r10)),
                  child: GetBuilder<QuizController>(
                    builder: (controller) {
                      // ⬇️ ScoreProgress
                      return SizedBox(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth * 0.8,
                      );
                    },
                  ),
                );
              }),
            ),
            gap_v20,
            Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(80),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.whiteColor,
                      // offset: Offset(5, 5),
                      // spreadRadius: 10,
                      blurRadius: 20,
                    )
                  ]),
              child: Text(
                "Score \n 2*8 = 16",
                style: style_black_w600_15,
                textAlign: TextAlign.center,
              ),
            ),
            gap_v30,
            Container(
              padding: all20,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(r10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    // cro
                    children: [
                      ScoreBox(
                        color: AppColor.primaryButtonColor,
                      ),
                      ScoreBox(
                        color: AppColor.blackColor,
                      ),
                    ],
                  ),
                  Row(
                    // cro
                    children: [
                      ScoreBox(
                        color: AppColor.primaryColor,
                      ),
                      ScoreBox(
                        color: AppColor.redColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(child: gap_v10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Review Answer",
                    style: style_green_w500_13,
                  ),
                ),
                gap_h10,
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Leaderboard",
                    style: style_green_w500_13,
                  ),
                )
              ],
            ),
            gap_v20
          ],
        ),
      ),
    );
  }
}
