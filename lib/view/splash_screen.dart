import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/view/widgets/app_logo.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';

import 'widgets/LinearLoading.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.backgroundTopCenter,
              AppColor.primaryColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppLogo(),
            SizedBox(
              height: 20,
            ),
            LinearLoading(),
          ],
        ),
      ),
    );
  }
}
