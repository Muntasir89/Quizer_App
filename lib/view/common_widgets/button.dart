import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:get/get.dart';
import 'package:quizer/res/routes/route_names.dart';

import '../../res/colors/AppColor.dart';
import '../../res/values/app_values.dart';

class Button extends StatefulWidget {
  final title;
  Button({this.title = "", super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (_) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = !isPressed;
          Get.offNamed(RouteName.homePage);
        });
      },
      child: AnimatedContainer(
        width: w * 0.5,
        height: 50,
        // color: Colors.greenAccent,
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        curve: Curves.linear,
        duration: const Duration(milliseconds: 50),
        decoration: BoxDecoration(
            color: AppColor.primaryButtonColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: isPressed == false
                ? [
                    BoxShadow(
                        color: Color(0xFFBDBDBD),
                        offset: Offset(4.0, 4.0),
                        blurRadius: 4,
                        spreadRadius: 4,
                        inset: true),
                    BoxShadow(
                        color: AppColor.secondaryTextColor,
                        offset: Offset(0.4, 0.4),
                        blurRadius: 5,
                        spreadRadius: 5,
                        inset: false),
                  ]
                : []),
        child: Text(
          widget.title,
          style: TextStyle(
              color: AppColor.whiteColor,
              fontFamily: 'Poppins_SemiBold',
              fontSize: 20,
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
