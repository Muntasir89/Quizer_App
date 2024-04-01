import 'package:flutter/material.dart';

import '../../../core/colors/AppColor.dart';

class SubjectQuizCard extends StatelessWidget {
  final subject;
  SubjectQuizCard({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Text(
      subject,
      style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
          shadows: [
            Shadow(
              color: AppColor.primaryColor,
              offset: Offset(0, 1),
              blurRadius: 1,
            )
          ]),
    );
  }
}
