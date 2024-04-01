import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/AppColor.dart';
import '../../../core/values/app_values.dart';

class SecondThirdBoard extends StatelessWidget {
  const SecondThirdBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        // Pillar ⬇️ board
        Container(
          height: size120,
          width: size70,
          margin: only_t55,
          decoration: BoxDecoration(
            color: AppColor.whiteColor_50,
            borderRadius: BorderRadius.circular(r10),
          ),
        ),
        // Circle ⬇️ image
        Container(
          height: size50,
          width: size50,
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
