import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/res/constants.dart';
import 'package:quizer/view/universal_widgets/EditText.dart';

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
        child: Column(
          children: [
            ClipPath(
              clipper: CustomShape(),
              child: Container(
                height: h * 0.2,
                width: w,
                color: Colors.blue,
              ),
            ),
            EditText(
                controller: _emailController,
                textType: 1,
                label: "Email") // For EmailAddress
          ],
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
