import 'package:get/get.dart';
import 'package:quizer/view_model/home/subject_dropdown/subjectDropDownController.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubjectDropDownController>(() => SubjectDropDownController());
  }
}
