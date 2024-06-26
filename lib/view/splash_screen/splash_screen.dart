import 'dart:async';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:quizer/core/colors/AppColor.dart';
import 'package:quizer/core/routes/routes.dart';
import 'package:quizer/view/splash_screen/widgets/app_logo.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';

import '../../core/routes/route_names.dart';
import '../../view_model/services/splash_services.dart';
import 'widgets/linear_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    processSplashScreen();
  }

  void processSplashScreen() {
    Future.delayed(const Duration(seconds: 1), () async {
      // context.go(RouteName.loginPage);
      context.goNamed(RouteName.loginPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.backgroundTopCenter,
              AppColor.primaryColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppLogo(),
            SizedBox(
              height: 20,
            ),
            LinearLoading(),
          ],
        ),
      ),
    );
  }
}
