import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizer/core/routes/route_names.dart';

class QuizController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  final qustions = RxInt(10);
  final qustionsNo = RxInt(1);
  final duration = RxInt(2);

  @override
  void onInit() {
    // Our animation duration is dynamic
    _animationController = AnimationController(
        duration: Duration(seconds: duration.value), vsync: this);
    animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    // start our animation
    // Once 60s is completed go to the next page
    // _animationController.repeat();
    _animationController.forward().whenComplete(() {
      nextQuestion();
    });
    _pageController = PageController();

    super.onInit();
  }

  void nextQuestion() {
    // Reset the counter
    print("next Question starts");
    if (qustionsNo.value < qustions.value) {
      _animationController.reset();
      _pageController.nextPage(
        duration: Duration(seconds: 1),
        curve: Curves.linear,
      );
      qustionsNo.value++;
      _animationController.forward().whenComplete(() {
        nextQuestion();
      });
    } else {
      Get.offNamed(RouteName.scorePage);
    }
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    _animationController.dispose();
    _pageController.dispose();
    super.onClose();
  }
}
