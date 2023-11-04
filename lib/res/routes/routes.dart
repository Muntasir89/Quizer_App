import 'package:get/get.dart';
import 'package:quizer/view/home_screen/home_screen.dart';
import 'package:quizer/view/signup_screen/signup_screen.dart';

import '../../view/login_screen/login_screen.dart';
import '../../view/splash_screen/splash_screen.dart';
import 'route_names.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RouteName.splashScreen,
            page: () => HomeScreen(), //HomeScreen(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.loginPage,
            page: () => HomeScreen(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
        GetPage(
            name: RouteName.signupPage,
            page: () => SignupScreen(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.homePage,
            page: () => HomeScreen(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
      ];
}
