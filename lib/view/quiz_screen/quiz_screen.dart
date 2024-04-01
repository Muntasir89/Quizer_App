import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizer/core/colors/AppColor.dart';
import 'package:quizer/core/values/text_style.dart';
import 'package:quizer/view/quiz_screen/widgets/options.dart';
import 'package:quizer/view_model/quiz/quiz_controller.dart';

import '../../core/assets/AppAssets.dart';
import '../../core/values/app_values.dart';

class QuizPage extends StatelessWidget {
  QuizPage({super.key});

  QuizController controller = Get.find<QuizController>();

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
              actions: [
                TextButton(
                  onPressed: () {
                    controller.nextQuestion();
                  },
                  child: Text(
                    "Skip",
                    style: style_grey_w500_15,
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GetBuilder<QuizController>(
                builder: (controller) => Text(
                  "${(controller.animation.value * controller.duration.value).round()} sec",
                  style: style_grey_w500_13,
                ),
              ),
            ),
            gap_v5,
            // For the Progressbar Container
            Container(
              height: 20,
              padding: symmetric_h4_v2,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: AppColor.whiteColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(r10),
              ),
              child: LayoutBuilder(builder: (context, constraints) {
                // For ⬇️ progressbar decoration
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(r10),
                  ),
                  child: GetBuilder<QuizController>(
                    builder: (controller) {
                      // ⬇️ progressbar
                      return SizedBox(
                        height: constraints.maxHeight,
                        width:
                            constraints.maxWidth * controller.animation.value,
                      );
                    },
                  ),
                );
              }),
            ),
            gap_v10,
            GetBuilder<QuizController>(builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${controller.qustionsNo.value} /10",
                    style: style_white_bold_18,
                  ),
                  Text(
                    "Marks: 20",
                    style: style_white_bold_18,
                  )
                ],
              );
            }),
            gap_v20,
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: controller.pageController,
                itemCount: controller.qustions.value,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "${controller.qustionsNo.value}) Which type of JavaScript language is ___?",
                          style: style_white_w500_15,
                        ),
                        gap_v10,
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(3)),
                          child: Image.asset(
                            "assets/images/OOP.png",
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        gap_v10,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Give your answer",
                            style: style_white_w500_15,
                          ),
                        ),
                        gap_v10,
                        Container(
                          padding: all20,
                          decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(r15),
                          ),
                          child: Column(
                            children: [
                              Option(),
                              Option(),
                              Option(),
                              Option(),
                            ],
                          ),
                        ),
                        // gap_h10
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
