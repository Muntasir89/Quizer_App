import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

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
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColor.backgroundTopCenter, AppColor.primaryColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: h * 0.2,
                  width: w,
                  color: Colors.white,
                ),
              ),
              Container(
                width: w * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EditText(
                        controller: _nameController,
                        textType: 0,
                        label: "Name"),
                    const SizedBox(
                      height: 10,
                    ),
                    EditText(
                        controller: _emailController,
                        textType: 1,
                        label: "Email"),
                    const SizedBox(
                      height: 10,
                    ),
                    EditText(
                        controller: _passwordController,
                        textType: 2,
                        label: "Password"),
                    const SizedBox(
                      height: 10,
                    ),
                    EditText(
                        controller: _confirmPassController,
                        textType: 2,
                        label: "Confirm Password"),
                    const SizedBox(
                      height: 10,
                    ),
                    EditText(
                        controller: _mobileNoController,
                        textType: 3,
                        label: "Mobile No"),
                    const SizedBox(
                      height: 40,
                    ),
                    Button(title: "Sign Up")
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already has an Account?",
                    style: TextStyle(color: AppColor.whiteColor),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.offNamed(RouteName.loginPage);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: AppColor.redColor),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double H = size.height;
    double W = size.width;
    double radius = size.width * 0.15;

    Path path = Path();

    path.lineTo(0, H);
    path.quadraticBezierTo(0, H - radius, radius, H - radius);
    path.lineTo(W - radius, H - radius);
    path.quadraticBezierTo(W, H - radius, W, H - 2 * radius);
    path.lineTo(W, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw false;
  }
}
