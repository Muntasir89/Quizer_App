import 'package:flutter/material.dart';
import 'package:quizer/res/colors/AppColor.dart';

class EditText extends StatelessWidget {
  final controller;
  final label;
  int textType;
  EditText({super.key, this.controller, this.label, required this.textType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: textType == 2 ? true : false,
      validator: ((value) {
        if (value == null || value.isEmpty) {
          return label;
        }
        return null;
      }),
      keyboardType: textCategory(textType),
      decoration: InputDecoration(
          focusedBorder: Border(),
          enabledBorder: Border(),
          labelText: label,
          labelStyle: TextStyle(color: AppColor.whiteColor)),
      textAlign: TextAlign.start,
      cursorColor: AppColor.whiteColor,
    );
  }

  OutlineInputBorder Border() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    );
  }

  TextInputType textCategory(int textType) {
    if (textType == 0) {
      return TextInputType.name;
    } else if (textType == 1) {
      return TextInputType.emailAddress;
    } else if (textType == 2) {
      return TextInputType.visiblePassword;
    } else if (textType == 3) {
      return TextInputType.phone;
    }
    return TextInputType.text;
  }
}
