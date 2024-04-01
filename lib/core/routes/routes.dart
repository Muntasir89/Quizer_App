import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:quizer/view/home_screen/home_screen.dart';
import 'package:quizer/view/landing_page/landing_page.dart';
import 'package:quizer/view/quiz_details_page/quiz_details_page.dart';
import 'package:quizer/view/quiz_screen/quiz_screen.dart';
import 'package:quizer/view/score_screen/score_screen.dart';
import 'package:quizer/view/signup_screen/signup_screen.dart';
import 'package:quizer/view/temp.dart';

import '../../view/leaderboard_screen/leaderboard_screen.dart';
import '../../view/login_screen/login_screen.dart';
import '../../view/splash_screen/splash_screen.dart';
import 'route_names.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/temp',
      name: 'temp',
      builder: (BuildContext context, GoRouterState state) {
        return const TempPage();
      },
    ),
    GoRoute(
      path: '/',
      name: RouteName.splashScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/loginPage',
      name: RouteName.loginPage,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: '/signupPage',
      name: RouteName.signupPage,
      builder: (BuildContext context, GoRouterState state) {
        return const SignupScreen();
      },
    ),
    GoRoute(
      path: '/homePage',
      name: RouteName.homePage,
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: '/quizDetailsPage',
      name: RouteName.quizDetailsPage,
      builder: (BuildContext context, GoRouterState state) {
        return const QuizDetailsPage();
      },
    ),
    GoRoute(
      path: '/scorePage',
      name: RouteName.scorePage,
      builder: (BuildContext context, GoRouterState state) {
        return const ScorePage();
      },
    ),
    GoRoute(
      path: '/leaderboardPage',
      name: RouteName.leaderboardPage,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return MaterialPage(child: LeaderboardScreen());
      },
    ),
  ],
);
