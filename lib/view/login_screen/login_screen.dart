import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quizer/res/assets/AppAssets.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/res/values/app_values.dart';
import 'package:quizer/res/routes/route_names.dart';
import 'package:quizer/view/common_widgets/button.dart';
import 'package:quizer/view/common_widgets/edit_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColor.backgroundTopCenter, AppColor.primaryColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                height: h * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                      height: 40,
                    ),
                    Button(
                      title: "Login",
                    )
                  ],
                ),
              ),
              Text(
                "or",
                style: TextStyle(color: AppColor.whiteColor),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.google,
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 50),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppAssets.github,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No Account?",
                    style: TextStyle(color: AppColor.whiteColor),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.offNamed(RouteName.signupPage);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: AppColor.redColor),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
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
