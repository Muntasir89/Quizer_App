import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/res/values/text_style.dart';

import '../../res/assets/AppAssets.dart';
import '../../res/values/app_values.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

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
          gap_v10,
          Container(
            margin: symmetric_h20,
            height: 20,
            // padding: all4,
            decoration: BoxDecoration(
              color: AppColor.whiteColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(r10),
            ),
            child: AnimatedContainer(
              margin: all2,
              decoration: BoxDecoration(
                color: AppColor.primaryButtonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              duration: Duration(seconds: 5),
            ),
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
