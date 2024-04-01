import 'package:flutter/material.dart';

import '../../../core/colors/AppColor.dart';

class TitleQuizCard extends StatelessWidget {
  final title;
  TitleQuizCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryTextColor,
          shadows: [
            Shadow(
                color: AppColor.textShadowColor,
                offset: Offset(0, 2),
                blurRadius: 4)
          ]),
    );
  }
}
