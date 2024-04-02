import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quizer/core/assets/AppAssets.dart';
import 'package:quizer/core/colors/AppColor.dart';
import 'package:quizer/core/constants/constants.dart';
import 'package:quizer/core/values/text_style.dart';
import 'package:quizer/view/home_screen/widgets/custom_dropdown.dart';
import 'package:quizer/view/home_screen/widgets/viewAllBtn.dart';
import 'package:quizer/view/home_screen/widgets/quiz_list.dart';

import '../../core/values/app_values.dart';
import 'widgets/filterable_list_item.dart';
import 'widgets/header_title.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Adjust the height of the app bar
        child: AppBar(
          backgroundColor: AppColor.whiteColor,
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: getWidth(context) * 0.05),
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
      // bottomNavigationBar: Obx(
      //   () => CurvedNavigationBar(
      //     backgroundColor: Colors.transparent,
      //     color: AppColor.whiteColor,
      //     height: 65,
      //     items: <Widget>[
      //       Icon(
      //         Icons.home,
      //         size: 30,
      //         // color: (Get.find<BottomNavController>().selectedIndex.value) == 0
      //         //     ? AppColor.primaryButtonColor
      //         //     : AppColor.secondaryTextColor,
      //       ),
      //       Icon(
      //         Icons.leaderboard,
      //         size: 30,
      //         // color: (Get.find<BottomNavController>().selectedIndex.value) == 1
      //         //     ? AppColor.primaryButtonColor
      //         //     : AppColor.secondaryTextColor,
      //       ),
      //       Icon(
      //         Icons.person,
      //         size: 30,
      //         // color: (Get.find<BottomNavController>().selectedIndex.value) == 2
      //         //     ? AppColor.primaryButtonColor
      //         //     : AppColor.secondaryTextColor,
      //       ),
      //     ],
      //     onTap: (index) {
      //       // Get.find<BottomNavController>().onBottomNavItemTapped(index);
      //     },
      //   ),
      // ),
      body: Container(
        padding: const EdgeInsets.only(left: 23, right: 23, top: 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bg), // Replace with your own image
            fit: BoxFit.cover,
            scale: 1.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeaderTitle(title: upcoming_quizes),
                ViewAllBtn(string: view_all, onPressed: pressedToViewAll)
              ],
            ),
            QuizList(type: upcoming),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeaderTitle(title: featured_quizes),
                ViewAllBtn(string: view_all, onPressed: pressedToViewAll)
              ],
            ),
            QuizList(type: featured),
            gap_v10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDropDown<String>(
                  dropdownList: <String>[
                    "dropdownItem1",
                    "dropdownItem2",
                    "dropdownItem3"
                  ],
                  onSelected: (String value) {
                    print("selected value: ${value}");
                  },
                ),
                ViewAllBtn(string: view_all, onPressed: pressedToViewAll),
              ],
            ),
            gap_v10,
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

  void pressedToViewAll() {
    print("Upcoming Quiz view all pressed");
  }
}

// class CustomShape extends ContinuousRectangleBorder {
//   @override
//   Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
//     double H = AppBar().preferredSize.height +getWidth(context)* 0.18;
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
