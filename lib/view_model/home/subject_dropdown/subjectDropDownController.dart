import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubjectDropDownController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> expandAnimation;

  final isStart = Rx<bool>(false);
  final rotation = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    expandAnimation =
        CurvedAnimation(parent: expandController, curve: Curves.linear);
  }

  void startAniamation() {
    isStart.value = !(isStart.value);
    if (isStart.value) {
      expandController.forward();
      rotation.value = 1 / 2;
    } else {
      expandController.reverse();
      rotation.value = 0.0;
    }
  }

  @override
  void onClose() {
    expandController.dispose();
    super.onClose();
  }
}
