import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/res/values/text_style.dart';
import 'package:quizer/view_model/quiz/quiz_controller.dart';

import '../../../res/assets/AppAssets.dart';
import '../../../res/values/app_values.dart';

class QuizPage extends StatelessWidget {
  QuizPage({super.key});

  QuizController controller = Get.find<QuizController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: symmetric_h10,
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
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: style_grey_w500_15,
                ),
              )
            ],
          ),
          Padding(
            padding: symmetric_h20,
            child: Align(
              alignment: Alignment.centerLeft,
              child: GetBuilder<QuizController>(
                builder: (controller) => Text(
                  "${(controller.animation.value * controller.duration.value).round()} sec",
                  style: style_grey_w500_13,
                ),
              ),
            ),
          ),
          gap_v5,
          Stack(
            children: [
              Container(
                margin: symmetric_h20,
                height: 20,
                // padding: all4,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(r10),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) => GetBuilder<QuizController>(
                  builder: (controller) {
                    return Container(
                      height: 16,
                      width: constraints.maxWidth * controller.animation.value,
                      margin: symmetric_h22_v2,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(r10),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          // gap_v10,
          // Padding(
          //   padding: symmetric_h10,
          //   child: DecoratedBox(
          //     decoration: BoxDecoration(
          //       color: AppColor.whiteColor.withOpacity(0.5),
          //     ),
          //     child: Container(
          //       margin: all4,
          //       height: 10,
          //       decoration: BoxDecoration(color: AppColor.primaryButtonColor),
          //     ),
          //   ),
          // ),
        ],
      ),
    ));
  }
}
