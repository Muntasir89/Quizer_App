import 'package:flutter/material.dart';
import 'package:quizer/core/values/text_style.dart';

import '../../../core/colors/AppColor.dart';

class HeaderTitle extends StatelessWidget {
  final title;
  const HeaderTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: style_white_w500_18);
  }
}
