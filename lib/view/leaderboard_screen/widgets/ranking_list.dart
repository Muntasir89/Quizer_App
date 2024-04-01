import 'package:flutter/material.dart';
import 'package:quizer/view/leaderboard_screen/widgets/first_board.dart';
import 'package:quizer/view/leaderboard_screen/widgets/rank_card.dart';
import 'package:quizer/view/leaderboard_screen/widgets/second_third_board.dart';

import '../../../core/colors/AppColor.dart';
import '../../../core/values/app_values.dart';

class RankingList extends StatelessWidget {
  const RankingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [SecondThirdBoard(), FirstBoard(), SecondThirdBoard()],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: only_t150,
                child: SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  child: ClipPath(
                    clipper: CustomArcClipper(),
                    child: Container(
                      color: AppColor.whiteColor,
                      padding: only_l30_r30_t40,
                      child: ListView.builder(itemBuilder: (context, index) {
                        return RankCard(
                          index: index,
                          name: "Muntasir Hossen Monim",
                        );
                      }),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class CustomArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.moveTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 0.075 * h);
    // path.lineTo(w / 2, 0);
    // path.lineTo(0, 200);
    path.quadraticBezierTo(3 * w / 4, 0, w / 2, 0);
    path.quadraticBezierTo(w / 4, 0, 0, 0.075 * h);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
