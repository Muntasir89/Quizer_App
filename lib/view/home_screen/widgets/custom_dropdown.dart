import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:quizer/core/colors/AppColor.dart';
import 'package:quizer/core/values/text_style.dart';

import '../../../core/constants/constants.dart';
import '../../../core/values/app_values.dart';

class CustomDropDown<T> extends StatelessWidget {
  CustomDropDown({
    required this.dropdownList,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final List<T> dropdownList;
  final void Function(T value) onSelected;

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: size180,
      // menuHeight: 50,
      hintText: select,
      textStyle: style_white_w500_15,
      // expandedInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: AppColor.whiteColor,
        filled: true,
        fillColor: AppColor.whiteColor.withOpacity(0.3),
        hintStyle: style_grey_w500_15,
        contentPadding: symmetric_h15_v10,
        constraints: const BoxConstraints(maxHeight: size45),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(r20),
          borderSide: const BorderSide(color: AppColor.whiteColor, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(r25),
          borderSide: const BorderSide(color: AppColor.whiteColor, width: 1.0),
        ),
      ),
      menuStyle: MenuStyle(
        backgroundColor:
            MaterialStateProperty.all(Colors.white.withOpacity(0.9)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(r20),
          ),
        ),
      ),
      dropdownMenuEntries: dropdownList
          .map((item) =>
              DropdownMenuEntry(value: item.toString(), label: item.toString()))
          .toList(),
      onSelected: (value) {
        print(value);
      },
    );
  }
}
