import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quizer/res/colors/AppColor.dart';
import 'package:quizer/res/values/app_values.dart';
import 'package:quizer/view/leaderboard_screen/widgets/first_board.dart';
import 'package:quizer/view/leaderboard_screen/widgets/ranking_list.dart';
import 'package:quizer/view/leaderboard_screen/widgets/second_third_board.dart';

import '../../res/assets/AppAssets.dart';
import '../../res/values/text_style.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: AppColor.whiteColor,
              centerTitle: true,
              title: Text(
                'Leaderboard'.tr,
                style: style_white_bold_18,
              ),
            ),
            Padding(
              padding: only_l30,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "All",
                  style: style_white_bold_18,
                ),
              ),
            ),
            gap_v20,
            Expanded(
              child: RankingList(),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child:
            // )
          ],
        ),
      ),
    );
  }
}
