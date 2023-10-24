import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';

class LinearLoading extends StatelessWidget {
  const LinearLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 200,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: AppColor.innerBoxShadowColor,
            offset: Offset(2.0, 2.0),
            blurRadius: 3,
            spreadRadius: 1.0,
            inset: true),
        BoxShadow(
            color: AppColor.innerBoxShadowColor,
            offset: Offset(-2.0, -2.0),
            blurRadius: 3,
            spreadRadius: 1.0,
            inset: true),
      ]),
      child: Stack(
        children: [
          LoopAnimationBuilder<Alignment?>(
            // mandatory parameters
            tween: AlignmentTween(
                begin: Alignment.centerLeft, end: Alignment.centerRight),
            duration: const Duration(seconds: 2),
            builder: (context, value, child) {
              return Container(alignment: value, width: 220, child: child);
            },
            // optional parameters
            curve: Curves.linear,
            child: Container(
              width: 22,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 25,
              color: AppColor.primaryButtonColor,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 25,
              color: AppColor.primaryButtonColor,
            ),
          ),
        ],
      ),
    );
  }
}
