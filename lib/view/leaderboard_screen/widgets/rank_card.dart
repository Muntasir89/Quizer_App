import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/res/values/app_values.dart';
import 'package:quizer/res/values/text_style.dart';

class RankCard extends StatelessWidget {
  RankCard({super.key, required this.index, required this.name});

  final index;
  final name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: only_b10,
      padding: symmetric_h15_v10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(r10),
        border: Border.all(width: 1, color: AppColor.secondaryTextColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "$index",
                style: style_grey_w500_13,
              ),
              index.toString().length < 3 ? gap_h10 : gap_h5,
              CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 18,
              ),
              gap_h10,
              Text(
                name.toString().length > 15
                    ? name.toString().substring(0, 15) + "..."
                    : name.toString(),
                style: style_black_w400_13,
              ),
            ],
          ),
          Text(
            "$index",
            style: style_green_w500_13,
          )
        ],
      ),
    );
  }
}
