import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizer/core/assets/AppAssets.dart';

import '../../../core/colors/AppColor.dart';
import '../../../core/values/app_values.dart';

class FirstBoard extends StatelessWidget {
  const FirstBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        // Crown ⬇️ icon
        Image.asset(
          AppAssets.crown,
          height: 30,
          width: 30,
        ),
        // Pillar ⬇️ board
        Container(
          height: size150,
          width: size80,
          margin: only_t55,
          decoration: BoxDecoration(
            color: AppColor.whiteColor_50,
            borderRadius: BorderRadius.circular(r10),
          ),
        ),
        // Circle ⬇️ image
        Container(
          height: size60,
          width: size60,
          margin: only_t25,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(r30),
            border: Border.all(color: AppColor.redColor),
          ),
          child: Icon(
            Icons.person,
            size: 45,
          ),
        ),
      ],
    );
  }
}
