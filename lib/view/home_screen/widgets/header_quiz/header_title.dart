import 'package:flutter/material.dart';

import '../../../../core/colors/AppColor.dart';

class HeaderTitle extends StatelessWidget {
  final title;
  HeaderTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          backgroundColor: AppColor.whiteColor.withOpacity(0.25),
          color: AppColor.whiteColor,
          fontSize: 25,
          fontWeight: FontWeight.w500),
    );
  }
}
