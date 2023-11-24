import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizer/res/assets/AppAssets.dart';
import 'package:quizer/res/routes/route_names.dart';
import 'package:quizer/res/values/app_values.dart';
import 'package:quizer/res/values/text_style.dart';
import 'package:quizer/view/common_widgets/button.dart';

import '../../res/colors/AppColor.dart';

class QuizDetailsPage extends StatelessWidget {
  const QuizDetailsPage({super.key});

  final title = "Weekly Quiz";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.bg),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(
                  'Quiz Title'.tr,
                  style: style_black_bold_25,
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(r20),
                    bottomRight: Radius.circular(r20),
                  ),
                ),
                child: Padding(
                  padding: only_l20_r20_b20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(r20),
                    child: Image.asset(
                      'assets/images/upcoming.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: only_l30_r30_t20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'question_no'.tr,
                      style: style_white_bold_20,
                    ),
                    gap_v20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'topic'.tr,
                          style: style_grey_w500_15,
                        ),
                        Text(
                          'time'.tr,
                          style: style_white_w500_15,
                        ),
                      ],
                    ),
                    gap_v20,
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 250,
                      ),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        style: style_grey_w500_13,
                      ),
                    ),
                    gap_v30,
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(RouteName.quizPage);
                      },
                      child: Text(
                        "Start Quiz",
                        style: style_black_w600_15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
