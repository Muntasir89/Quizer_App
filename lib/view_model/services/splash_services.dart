import 'dart:async';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quizer/res/routes/route_names.dart';

class SplashServices {
  final userdata = GetStorage();

  void initState() {
    userdata.writeIfNull('isLogged', false);
    Future.delayed(const Duration(seconds: 1), () async {
      checkiflogged();
    });
  }

  void checkiflogged() {
    userdata.read('isLogged')
        ? Get.offNamed(RouteName.homePage)
        : Get.offNamed(RouteName.loginPage);
  }
}
