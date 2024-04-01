import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizer/core/values/text_style.dart';

import '../../../core/colors/AppColor.dart';
import '../../../core/values/app_values.dart';

class ScoreBox extends StatelessWidget {
  final Color color;
  ScoreBox({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: symmetric_h4_v2,
        padding: symmetric_h15_v10,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(r12),
          border: Border.all(
            width: 1,
            color: AppColor.secondaryTextColor,
          ),
        ),
        child: Text(
          "100% \n Completion",
          style: TextStyle(
            color: color,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
