import 'package:get/get.dart';
import 'package:quizer/view_model/home/bottomNavController/bottomNavController.dart';
import 'package:quizer/view_model/home/subject_dropdown/subjectDropDownController.dart';
import 'package:quizer/view_model/quiz/quiz_controller.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubjectDropDownController>(() => SubjectDropDownController());
    Get.lazyPut<QuizController>(() => QuizController());
    Get.lazyPut<BottomNavController>(() => BottomNavController());
  }
}
