import 'package:flutter/material.dart';

import '../../core/colors/AppColor.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final appBar;
  final trailingWidget;
  customAppBar({
    super.key,
    required this.title,
    required this.appBar,
    this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 25,
            color: AppColor.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          trailingWidget,
        ]
        //   IconButton(
        //     onPressed: () {
        //       //Get.toNamed(RouteName.settingsPage);
        //     },
        //     icon: Icon(
        //       Icons.settings,
        //       color: AppColor.primaryButtonColor,
        //       size: 30.w,
        //     ),
        //   )
        );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
