import 'package:get/get.dart';

class BottomNavController extends GetxController {
  final selectedIndex = RxInt(0);

  void onBottomNavItemTapped(int index) {
    selectedIndex.value = index;
  }
}
