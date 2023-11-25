import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  // List<Question> _questions =
  final duration = RxInt(10);

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

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    _animationController.dispose();
    _pageController.dispose();
    super.onClose();
  }

  void nextQuestion() {
    // Reset the counter
    print("next Question starts");
    _animationController.reset();
    _animationController.forward().whenComplete(() {
      nextQuestion();
    });
  }
}
