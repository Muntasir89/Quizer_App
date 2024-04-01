import 'package:flutter/material.dart';

import '../../../core/colors/AppColor.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: AppColor.whiteColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Text(
          "Quizer",
          style: const TextStyle(
            // color: AppColor.transparentColor,
            fontFamily: 'Luckiest_Guy',
            fontSize: 48,
          ),
        ),
      ),
    );
  }
}
