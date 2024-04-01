import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:quizer/core/constants/constants.dart';
import 'package:quizer/core/values/text_style.dart';

import '../../core/assets/AppAssets.dart';
import '../../core/colors/AppColor.dart';
import '../../core/values/app_values.dart';
import '../../core/routes/route_names.dart';
import '../common_widgets/button.dart';
import '../common_widgets/edit_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPassController = TextEditingController();
  final _mobileNoController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPassController.dispose();
    _mobileNoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = getHeight(context);
    final w = getWidth(context);
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        alignment: Alignment.center,
        padding: all30,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bg), // Replace with your own image
            fit: BoxFit.cover,
            scale: 1.0,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                signup,
                style: style_white_w500_35,
              ),
              gap_v20,
              EditText(
                controller: _nameController,
                textType: 0,
                label: name,
              ),
              gap_v10,
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
              gap_v10,
              EditText(
                controller: _confirmPassController,
                textType: 2,
                label: confirmPassword,
              ),
              gap_v10,
              EditText(
                controller: _mobileNoController,
                textType: 3,
                label: mobielNo,
              ),
              gap_v30,
              ElevatedButton(
                onPressed: () {
                  context.goNamed(RouteName.homePage);
                },
                child: const Text(
                  signup,
                  style: style_black_w500_15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    alreadyHasAccount,
                    style: TextStyle(color: AppColor.whiteColor),
                  ),
                  gap_v5,
                  TextButton(
                    onPressed: () {
                      context.goNamed(RouteName.loginPage);
                    },
                    child: const Text(
                      login,
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
