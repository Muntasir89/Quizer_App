import 'package:flutter/material.dart';
import 'package:quizer/core/colors/AppColor.dart';
import 'package:quizer/core/values/app_values.dart';
import 'package:quizer/core/values/text_style.dart';

class Option extends StatelessWidget {
  const Option({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: only_b10,
      padding: symmetric_h15_v10,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(r12),
        border: Border.all(color: AppColor.secondaryTextColor, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              "asldfjals;dfjasldfjals;dfjasldfjals;",
              style: style_black_w500_15,
            ),
          ),
          gap_h5,
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: AppColor.primaryButtonColor,
              borderRadius: BorderRadius.circular(r12),
              border: Border.all(
                width: 1,
                color: AppColor.secondaryTextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
