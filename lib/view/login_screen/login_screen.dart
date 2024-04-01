import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:quizer/core/assets/AppAssets.dart';
import 'package:quizer/core/colors/AppColor.dart';
import 'package:quizer/core/constants/constants.dart';
import 'package:quizer/core/values/app_values.dart';
import 'package:quizer/core/routes/route_names.dart';
import 'package:quizer/view/common_widgets/button.dart';
import 'package:quizer/view/common_widgets/edit_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = getHeight(context);
    final w = getWidth(context);
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        padding: const EdgeInsets.all(size30),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bg), // Replace with your own image
            fit: BoxFit.cover,
            scale: 1.0,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EditText(
                    controller: _emailController,
                    textType: 1,
                    label: email,
                  ),
                  gap_v10,
                  EditText(
                    controller: _passwordController,
                    textType: 2,
                    label: password,
                  ),
                  gap_v30,
                  ElevatedButton(
                    onPressed: () {
                      context.goNamed(RouteName.homePage);
                    },
                    child: const Text(login),
                  )
                ],
              ),
              gap_v10,
              const Text(
                or,
                style: TextStyle(color: AppColor.whiteColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.google,
                    height: size50,
                    width: size50,
                  ),
                  gap_h50,
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppAssets.github,
                      height: size50,
                      width: size50,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    no_account,
                    style: TextStyle(color: AppColor.whiteColor),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offNamed(RouteName.signupPage);
                    },
                    child: const Text(
                      signup,
                      style: TextStyle(color: AppColor.redColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
