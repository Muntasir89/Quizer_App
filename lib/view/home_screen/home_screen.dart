import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quizer/res/assets/AppAssets.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/view/home_screen/widgets/header_quiz/viewAllBtn.dart';
import 'package:quizer/view/home_screen/widgets/quiz_list.dart';
import 'package:quizer/view/home_screen/widgets/subject_drop_down/subject_dd_body.dart';
import 'package:quizer/view/home_screen/widgets/subject_drop_down/subject_head.dart';
import 'package:quizer/view_model/home/bottomNavController/bottomNavController.dart';

import '../../res/values/app_values.dart';
import 'widgets/filterable_list_item/filterable_list_item.dart';
import 'widgets/header_quiz/header_title.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: AppColor.whiteColor,
          height: 65.h,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
              color: (Get.find<BottomNavController>().selectedIndex.value) == 0
                  ? AppColor.primaryButtonColor
                  : AppColor.secondaryTextColor,
            ),
            Icon(
              Icons.leaderboard,
              size: 30,
              color: (Get.find<BottomNavController>().selectedIndex.value) == 1
                  ? AppColor.primaryButtonColor
                  : AppColor.secondaryTextColor,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: (Get.find<BottomNavController>().selectedIndex.value) == 2
                  ? AppColor.primaryButtonColor
                  : AppColor.secondaryTextColor,
            ),
          ],
          onTap: (index) {
            Get.find<BottomNavController>().onBottomNavItemTapped(index);
          },
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
                SubjectHead(),
                ViewAllBtn(string: "View All", onPressed: upcomingViewAll),
              ],
            ),
            SubjectDropDownBody(),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                    return FilterableListItem(
                      quizTitle: "Weekly Quiz",
                      subject: "Java",
                      time: "6:30 PM",
                      Date: "Mon, 6 Nov 23",
                    );
                  }),
                ),
              ),
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
