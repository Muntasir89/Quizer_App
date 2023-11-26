import 'package:get/get.dart';
import 'package:quizer/view/home_screen/home_screen.dart';
import 'package:quizer/view/landing_page/landing_page.dart';
import 'package:quizer/view/quiz_details_page/quiz_details_page.dart';
import 'package:quizer/view/quiz_screen/quiz_screen.dart';
import 'package:quizer/view/score_screen/score_screen.dart';
import 'package:quizer/view/signup_screen/signup_screen.dart';

import '../../view/leaderboard_screen/leaderboard_screen.dart';
import '../../view/login_screen/login_screen.dart';
import '../../view/splash_screen/splash_screen.dart';
import 'route_names.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RouteName.splashScreen,
            page: () => LeaderboardScreen(), //HomeScreen(),
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
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.quizDetailsPage,
          page: () => QuizDetailsPage(),
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.quizPage,
          page: () => QuizPage(),
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.scorePage,
          page: () => ScorePage(),
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.leaderboardPage,
          page: () => LeaderboardScreen(),
          transitionDuration: Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
