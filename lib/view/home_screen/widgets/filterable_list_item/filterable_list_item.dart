import 'package:flutter/material.dart';
import 'package:quizer/core/colors/AppColor.dart';
import 'package:quizer/core/values/text_style.dart';

class FilterableListItem extends StatelessWidget {
  final quizTitle, subject, time, Date;
  FilterableListItem({
    super.key,
    required this.quizTitle,
    required this.subject,
    required this.time,
    required this.Date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      height: 80,
      decoration: BoxDecoration(
        color: AppColor.whiteColor.withOpacity(0.2),
        border: Border.all(width: 1, color: AppColor.secondaryTextColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: AppColor.primaryButtonColor.withOpacity(0.7),
                child: Text(
                  subject[0],
                  style: style_white_bold_20,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    quizTitle,
                    style: style_white_w500_15,
                  ),
                  Text(
                    subject,
                    style: style_grey_w500_13,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                time,
                style: style_green_w500_13,
              ),
              Text(
                Date,
                style: style_green_w500_13,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
