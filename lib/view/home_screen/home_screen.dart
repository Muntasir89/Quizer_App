import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizer/res/assets/AppAssets.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/view/home_screen/widgets/header_quiz/viewAllBtn.dart';
import 'package:quizer/view/home_screen/widgets/quiz_list.dart';
import 'package:quizer/view/home_screen/widgets/subject_drop_down/subject_drop_down.dart';

import '../../res/constants.dart';
import 'widgets/header_quiz/header_title.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(70.h), // Adjust the height of the app bar
        child: AppBar(
          backgroundColor: AppColor.whiteColor,
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: w * 0.05),
              child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppAssets.profile,
                    height: 30,
                    width: 30,
                  )),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 23.w, right: 23.w, top: 20.w),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(AppAssets.bg), // Replace with your own image
                fit: BoxFit.cover,
                scale: 1.0),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderTitle(title: "Upcoming Quizzes"),
                ViewAllBtn(string: "View All", onPressed: upcomingViewAll)
              ],
            ),
            QuizList(type: "Upcoming"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderTitle(title: "Featured Quizzes"),
                ViewAllBtn(string: "View All", onPressed: upcomingViewAll)
              ],
            ),
            QuizList(type: "Featured"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubjectDropDown(),
                ViewAllBtn(string: "View All", onPressed: upcomingViewAll),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void upcomingViewAll() {
    print("Upcoming Quiz view all pressed");
  }
}

// class CustomShape extends ContinuousRectangleBorder {
//   @override
//   Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
//     double H = AppBar().preferredSize.height + w * 0.18;
//     double W = w;
//     double radius = W * 0.08;

//     Path path = Path();

//     path.lineTo(0, H);
//     path.quadraticBezierTo(0, H - radius, radius, H - radius);
//     path.lineTo(W - radius, H - radius);
//     path.quadraticBezierTo(W, H - radius, W, H - 2 * radius);
//     path.lineTo(W, 0);

//     return path;
//   }
// }
